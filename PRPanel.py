import tkinter as tk
from tkinter import ttk
import os
import sys
from tkinter import Toplevel, Label, Entry, Button
from tkinter import messagebox
import mysql.connector

class PRPanelClass:
    def __init__(self, root, db_manager, username):
        self.root = root
        self.root.title("Infocom Security System: PR")
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
        self.db_connected_label = ttk.Label(root, text="Welcome Back PR!", foreground='green')
        self.window = tk.Tk()
        width = self.window.winfo_screenwidth()
        height = self.window.winfo_screenheight()
        self.root.geometry(f"{width}x{height}+0+0")

        self.pr_data_button = tk.Button(root, text="PR Data", command=self.view_pr_data, height=3, width=20)
        self.pr_data_button.pack(pady=10)

        self.emp_sr_button = tk.Button(root, text="Emp SE Data", command=self.view_emp_se_data, height=3, width=20)
        self.emp_sr_button.pack(pady=10)

        self.emp_hr_button = tk.Button(root, text="Emp HR Data", command=self.view_emp_hr_data, height=3, width=20)
        self.emp_hr_button.pack(pady=10)

        self.emp_pr_button = tk.Button(root, text="Emp PR Data", command=self.view_emp_pr_data, height=3, width=20)
        self.emp_pr_button.pack(pady=10)

        logout_button = ttk.Button(root, text="Logout", command=self.logout)
        logout_button.pack()

    def view_pr_data(self):
        query = "SELECT * FROM pr_data"
        self.db_manager.cursor.execute(query)
        log_cred = self.db_manager.cursor.fetchall()
        querya = "UPDATE pr_data SET id=%s, firstname=%s, lastname=%s, dob=%s WHERE id=%s"
        # Display HR data in a new window or dialog
        self.display_data_window(log_cred, "PR DATA (Write Enabled)", "pr_data", querya)
        self.db_manager.cursor.fetchall()

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
        self.display_data_window(log_cred, "Emp PR (Write Enabled)", "emp_pr", querya)
        self.db_manager.cursor.fetchall()


    def display_data_window(self, data, title, table, queryy):
        self.db_manager.log_audit(self.username, f"Viewed {table}")
        # Create a new window
        data_window = Toplevel(self.root)
        data_window.title(title)
        data_window.geometry("400x300+{}+{}".format(self.root.winfo_screenwidth() // 2, self.root.winfo_screenheight() // 2))
        # Create header labels
        query = f"SELECT * FROM {table}"
        self.db_manager.cursor.execute(query)
        colmn = self.cursor.column_names
        for col_index, col_name in enumerate(colmn):
            label = Label(data_window, text=col_name)
            label.grid(row=0, column=col_index, padx=5, pady=5)
        

        # Create entry widgets for editing data
        entry_widgets = []
        for row_index, row_data in enumerate(data):
            for col_index, value in enumerate(row_data):
                entry = Entry(data_window, width=15)
                entry.insert(0, value)
                entry.grid(row=row_index + 1, column=col_index, padx=5, pady=5)
                entry_widgets.append(entry)

        # Create a button to save changes
        save_button = Button(data_window, text="Save Changes", command=lambda: self.save_changes(data, entry_widgets, table, queryy))
        save_button.grid(row=len(data) + 1, column=0, columnspan=len(data[0]), pady=10)
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


    def save_changes(self, original_data, entry_widgets, table, queryy):
        updated_data = [list(map(lambda entry: entry.get(), row_widgets)) for row_widgets in
                        [entry_widgets[i:i + len(original_data[0])] for i in range(0, len(entry_widgets), len(original_data[0]))]]

        # Update the database with the changes
        for row_index, row_data in enumerate(updated_data):
            update_query = queryy #query passed from function
            update_params = tuple(row_data + [original_data[row_index][0]])  # Assuming the first column
            self.db_manager.cursor.execute(update_query, update_params)
        # Commit the changes to the database
        self.db_manager.conn.commit()
        self.db_manager.log_audit(self.username, f"updated {table}")
        messagebox.showinfo("Save Changes", "Changes Saved Successfully!")  

    def logout(self):
        # Implement logic for logging out, destroying the admin panel window, and opening the login window
        self.root.destroy()
        # Log the logout event
        
        self.db_manager.log_audit(self.username, 'Logout')
        # exit and reopen the application
        os.execl(sys.executable, sys.executable, *sys.argv)
