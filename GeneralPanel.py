import tkinter as tk
from tkinter import ttk
import os
import sys
from tkinter import Toplevel, Label, Entry, Button
from tkinter import messagebox
import mysql.connector

class GeneralPanelClass:
    def __init__(self, root, db_manager, username):
        self.root = root
        self.root.title("Infocom Security System: General")
        self.db_manager = db_manager
        self.username = username
        self.conn = mysql.connector.connect(
            host="localhost",
            user="root",
            password="admin",
            database="infocom"
        )
        self.cursor = self.conn.cursor()
        cursor = self.conn.cursor(buffered=True)
        self.db_connected_label = ttk.Label(root, text="Welcome Back\n Role: General!", foreground='green')
        self.window = tk.Tk()
        width = self.window.winfo_screenwidth()
        height = self.window.winfo_screenheight()
        self.root.geometry(f"{width}x{height}+0+0")

        self.emp_sr_button = tk.Button(root, text="Emp SE Data", command=self.view_emp_se_data, height=3, width=20)
        self.emp_sr_button.pack(pady=10)

        self.emp_hr_button = tk.Button(root, text="Emp HR Data", command=self.view_emp_hr_data, height=3, width=20)
        self.emp_hr_button.pack(pady=10)

        self.emp_pr_button = tk.Button(root, text="Emp PR Data", command=self.view_emp_pr_data, height=3, width=20)
        self.emp_pr_button.pack(pady=10)

        logout_button = ttk.Button(root, text="Logout", command=self.logout)
        logout_button.pack()

    def view_emp_se_data(self):
        query = "SELECT * FROM emp_se"
        self.db_manager.cursor.execute(query)
        log_cred = self.db_manager.cursor.fetchall()
        querya = "UPDATE emp_se SET id=%s, address=%s, phone_no=%s, salary=%s, bloodgroup=%s WHERE id=%s"
        # Display HR data in a new window or dialog
        self.display_RDonly_data_window(log_cred, "Emp SE (Read Only)", "emp_se", querya)
        self.db_manager.cursor.fetchall()

    def view_emp_hr_data(self):
        query = "SELECT * FROM emp_hr"
        self.db_manager.cursor.execute(query)
        log_cred = self.db_manager.cursor.fetchall()
        querya = "UPDATE emp_hr SET id=%s, address=%s, phone_no=%s, rank=%s WHERE id=%s"
        # Display HR data in a new window or dialog
        self.display_RDonly_data_window(log_cred, "Emp HR (Read Only)", "emp_hr", querya)
        self.db_manager.cursor.fetchall()

    def view_emp_pr_data(self):
        query = "SELECT * FROM emp_pr"
        self.db_manager.cursor.execute(query)
        log_cred = self.db_manager.cursor.fetchall()
        querya = "UPDATE emp_pr SET id=%s, address=%s, phone_no=%s, salary=%s, WHERE id=%s"
        # Display HR data in a new window or dialog
        self.display_RDonly_data_window(log_cred, "Emp PR (Read Only)", "emp_pr", querya)
        self.db_manager.cursor.fetchall()

    def display_RDonly_data_window(self, data, title, table, queryy):
        self.db_manager.log_audit(self.username, f"Viewed {table}")
        # Create a new window
        data_window = Toplevel(self.root)
        data_window.title(title)
        data_window.geometry("400x300+{}+{}".format(self.root.winfo_screenwidth() // 2, self.root.winfo_screenheight() // 2))
    
        # Create header labels
        query = f"SELECT * FROM {table}"
        self.db_manager.cursor.execute(query)
        colmn = self.db_manager.cursor.column_names
        for col_index, col_name in enumerate(colmn):
            label = Label(data_window, text=col_name)
            label.grid(row=0, column=col_index, padx=5, pady=5)
        # Display data
        for row_index, row_data in enumerate(data):
            for col_index, value in enumerate(row_data):
                label = Label(data_window, text=value)
                label.grid(row=row_index + 1, column=col_index, padx=5, pady=5)


    def logout(self):
        # Implement logic for logging out, destroying the admin panel window, and opening the login window
        self.root.destroy()
        # Log the logout event
        
        self.db_manager.log_audit(self.username, 'Logout')
        # exit and reopen the application
        os.execl(sys.executable, sys.executable, *sys.argv)
