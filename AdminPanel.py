import tkinter as tk
from tkinter import ttk
import os
import sys
import mysql.connector
from tkinter import Toplevel, Label, Entry, Button
from tkinter import messagebox
from RWDisplay import display_data_window
from tkinter import E


class AdminPanelClass:
    def __init__(self, root, db_manager, username):
        self.root = root
        self.root.title("Infocom Security System: Administrator")
        self.db_manager = db_manager

        self.conn = mysql.connector.connect(
            host="localhost",
            user="root",
            password="admin",
            database="infocom"
        )
        self.cursor = self.conn.cursor()
        cursor = self.conn.cursor(buffered=True)

        self.username = username
        self.db_connected_label = ttk.Label(root, text="Welcome Back Admin!", foreground='green')



        self.window = tk.Tk()
        width = self.window.winfo_screenwidth()
        height = self.window.winfo_screenheight()
        self.root.geometry(f"{width}x{height}+0+0")

        self.db_connected_label.pack(pady=10)
        self.db_text1 = ttk.Label(root, text="Admin Tools:", foreground='black')
        self.db_text1.pack(pady=10)


        self.login_cred = tk.Button(root, text="Login Credentials", command=self.view_login_credentials, height=3, width=20)
        self.login_cred.pack(pady=10)

        self.hr_data_button = tk.Button(root, text="HR Data", command=self.view_hr_data, height=3, width=20)
        self.hr_data_button.pack(pady=10)

        self.pr_data_button = tk.Button(root, text="PR Data", command=self.view_pr_data, height=3, width=20)
        self.pr_data_button.pack(pady=10)

        self.se_data_button = tk.Button(root, text="SE Data", command=self.view_se_data, height=3, width=20)
        self.se_data_button.pack(pady=10)

        breaks = "\n"
        label = tk.Label(root, text=breaks)
        label.pack()

        self.emp_sr_button = tk.Button(root, text="Emp SE Data", command=self.view_emp_se_data, height=3, width=20)
        self.emp_sr_button.pack(pady=10)

        self.emp_hr_button = tk.Button(root, text="Emp HR Data", command=self.view_emp_hr_data, height=3, width=20)
        self.emp_hr_button.pack(pady=10)

        self.emp_pr_button = tk.Button(root, text="Emp PR Data", command=self.view_emp_pr_data, height=3, width=20)
        self.emp_pr_button.pack(pady=10)

        label = tk.Label(root, text=breaks)
        label.pack()

        logout_button = ttk.Button(root, text="Logout", command=self.logout)
        logout_button.pack()
        # ... admin panel GUI elements ...


    # Define functions to handle button clicks
    def view_hr_data(self):
        query = "SELECT * FROM hr_data"
        self.db_manager.cursor.execute(query)
        hr_data = self.db_manager.cursor.fetchall()
        querya = "UPDATE HR_data SET id=%s, name=%s, department=%s, supervisor=%s WHERE id=%s"
        # Display HR data in a new window or dialog
        self.display_data_window(hr_data, "HR DATA (Write Enabled)", "HR_data", querya)
        self.db_manager.cursor.fetchall()

    def view_login_credentials(self):
        query = "SELECT * FROM login_credential"
        self.db_manager.cursor.execute(query)
        log_cred = self.db_manager.cursor.fetchall()
        querya = "UPDATE login_credential SET username=%s, password=%s, role=%s WHERE username=%s"
        # Display HR data in a new window or dialog
        self.display_data_window(log_cred, "Login Credentials (Write Enabled)", "login_credential", querya)
        self.db_manager.cursor.fetchall()

    def view_pr_data(self):
        query = "SELECT * FROM pr_data"
        self.db_manager.cursor.execute(query)
        log_cred = self.db_manager.cursor.fetchall()
        querya = "UPDATE pr_data SET id=%s, firstname=%s, lastname=%s, dob=%s WHERE id=%s"
        # Display HR data in a new window or dialog
        self.display_data_window(log_cred, "PR DATA (Write Enabled)", "pr_data", querya)
        self.db_manager.cursor.fetchall()

    def view_se_data(self):
        query = "SELECT * FROM se_data"
        self.db_manager.cursor.execute(query)
        log_cred = self.db_manager.cursor.fetchall()
        querya = "UPDATE se_data SET id=%s, name=%s, projectname=%s, supervisor=%s, deadline=%s WHERE id=%s"
        # Display HR data in a new window or dialog
        self.display_data_window(log_cred, "SE DATA (Write Enabled)", "se_data", querya)
        self.db_manager.cursor.fetchall()

    def view_emp_se_data(self):
        query = "SELECT * FROM emp_se"
        self.db_manager.cursor.execute(query)
        log_cred = self.db_manager.cursor.fetchall()
        querya = "UPDATE emp_se SET id=%s, address=%s, phone_no=%s, salary=%s, bloodgroup=%s WHERE id=%s"
        # Display HR data in a new window or dialog
        self.display_data_window(log_cred, "Emp SE (Write Enabled)", "emp_se", querya)
        self.db_manager.cursor.fetchall()

    def view_emp_hr_data(self):
        query = "SELECT * FROM emp_hr"
        self.db_manager.cursor.execute(query)
        log_cred = self.db_manager.cursor.fetchall()
        querya = "UPDATE emp_hr SET id=%s, address=%s, phone_no=%s, rank=%s WHERE id=%s"
        # Display HR data in a new window or dialog
        self.display_data_window(log_cred, "Emp HR (Write Enabled)", "emp_hr", querya)
        self.db_manager.cursor.fetchall()

    def view_emp_pr_data(self):
        query = "SELECT * FROM emp_pr"
        self.db_manager.cursor.execute(query)
        log_cred = self.db_manager.cursor.fetchall()
        querya = "UPDATE emp_pr SET id=%s, address=%s, phone_no=%s, salary=%s, WHERE id=%s"
        # Display HR data in a new window or dialog
        self.display_data_window(log_cred, "Emp PR (Write Enabled)", "emp_pr", querya)
        self.db_manager.cursor.fetchall()

    """def view_general_data(self):
        query = "SELECT * FROM general"
        self.db_manager.cursor.execute(query)
        log_cred = self.db_manager.cursor.fetchall()
        querya = "UPDATE general SET username=%s, password=%s, role=%s WHERE id=%s"
        # Display HR data in a new window or dialog
        self.display_data_window(log_cred, "General", "general", querya)
        self.db_manager.cursor.fetchall()"""

    def display_data_window(self, data, title, table, queryy):
        # Create a new window and audit log
        self.db_manager.log_audit(self.username, f"Viewed {table}")
        data_window = Toplevel(self.root)
        data_window.title(title)

        # Command line 
        command_line_label = Label(data_window, text="SQL Command:")
        command_line_label.grid(row=len(data) + 3, column=0, pady=5)

        command_line_entry = Entry(data_window, width=40)
        command_line_entry.grid(row=len(data) + 3, column=1, pady=5)

        # Execute Button
        execute_button = Button(data_window, text="Execute", command=lambda: self.execute_sql_command(command_line_entry.get(), data_window))
        execute_button.grid(row=len(data) + 3, column=2, pady=5)

        # Refresh Button
        refresh_button = Button(data_window, text="Refresh", command=lambda: self.refresh_data_window(data_window, title, table, queryy))
        refresh_button.grid(row=0, column=len(data[0]), pady=5, sticky=tk.E)


        # Window size
        center_x = self.root.winfo_screenwidth() // 2
        center_y = self.root.winfo_screenheight() // 2
        data_window.geometry("800x600+{}+{}".format(center_x - 400, center_y - 300))

        # header labels
        query = f"SELECT * FROM {table}"
        self.db_manager.cursor.execute(query)
        self.db_manager.cursor.fetchall()
        query = f"DESCRIBE {table}"
        self.db_manager.cursor.execute(query)
        colmn = [column[0] for column in self.db_manager.cursor.fetchall()]

        # if colums exist, print column names in the first row
        if colmn:
            for col_index, col_name in enumerate(colmn):
                label = Label(data_window, text=col_name)
                label.grid(row=0, column=col_index, padx=5, pady=5)

        # entry widgets for editing data
        entry_widgets = []
        for row_index, row_data in enumerate(data):
            for col_index, value in enumerate(row_data):
                entry = Entry(data_window, width=15)
                entry.insert(0, value)
                entry.grid(row=row_index + 1, column=col_index, padx=5, pady=5)
                entry_widgets.append(entry)

        #empty row for inserting new data
        empty_entry_widgets = []
        for col_index in range(len(colmn)):
            empty_entry = Entry(data_window, width=15)
            empty_entry.insert(0, "")  # Insert an empty string
            empty_entry.grid(row=len(data) + 1, column=col_index, padx=5, pady=5)
            empty_entry_widgets.append(empty_entry)
        
        self.db_manager.cursor.fetchall()


        for row_index, row_data in enumerate(data):
            delete_button = Button(data_window, text="Delete Row", command=lambda idx=row_index: self.delete_selected_row(data, entry_widgets, empty_entry_widgets, table, queryy, data_window, idx, colmn))
            delete_button.grid(row=row_index + 1, column=len(colmn) + 2, padx=5, pady=5)
            
        # Button - save changes
        save_button = Button(data_window, text="Save Changes", command=lambda: self.save_changes(data, entry_widgets, empty_entry_widgets, table, queryy, data_window,colmn))
        save_button.grid(row=len(data) + 2, column=0, columnspan=len(colmn) + 1, pady=10)
        
        data_window.mainloop()   

    def save_changes(self, original_data, entry_widgets, empty_entry_widgets, table, update_query, data_window,colmn):

        # Gather values from entry widgets
        updated_data = [list(map(lambda entry: entry.get(), row_widgets)) for row_widgets in
                        [entry_widgets[i:i + len(original_data[0])] for i in range(0, len(entry_widgets), len(original_data[0]))]]

        # Initialize a flag to track changes
        changes_made = False

        # Update existing rows
        for i, (original_row, updated_row) in enumerate(zip(original_data, updated_data)):
            if updated_row != original_row:
                changes_made = True
                update_params = tuple(updated_row + [original_row[0]])  # Assuming ID is in the first column
                self.db_manager.cursor.execute(update_query, update_params)

        # Insert new rows
        if empty_entry_widgets[0].get():
            self.insert_new_row(table, colmn, empty_entry_widgets, data_window)

        # Commit changes if any were made
        if changes_made:
            self.db_manager.conn.commit()
            self.db_manager.log_audit(self.username, f"Updated/Inserted into {table}")
            messagebox.showinfo("info", "Changes Saved Successfully!", parent=data_window)
        else:   
            messagebox.showinfo("info", "No Changes Saved!", parent=data_window)

    def delete_selected_row(self, data, entry_widgets, empty_entry_widgets, table, queryy, data_window, row_index, colmn):
        # Get the ID of the row to be deleted
        row_id = data[row_index][0]
        print (f"DELETE FROM {table} WHERE {colmn[0]} = {row_id}")
        # Execute the DELETE query
        delete_query = f"DELETE FROM {table} WHERE {colmn[0]} = '{row_id}'"
        try:
            self.db_manager.cursor.execute(delete_query)
            self.db_manager.conn.commit()
            messagebox.showinfo("Success", "Row deleted successfully!")
        except Exception as e:
            messagebox.showerror("Error", f"Error deleting row: {e}")

        # Refresh the data window after deletion
        self.refresh_data_window(data_window, f"Updated {table}", table, queryy)

    def insert_new_row(self, table, colmn, empty_entry_widgets, data_window):
        try:
            # Construct the INSERT SQL statement
            placeholders = ', '.join(['%s'] * len(empty_entry_widgets))
            insert_query = f"INSERT INTO {table} ({', '.join(colmn)}) VALUES ({placeholders})"

            # Get values from empty entry widgets and convert to appropriate data types
            new_row_data = []
            for entry in empty_entry_widgets:
                value = entry.get()
                # Example: Convert to integer if the column expects an integer
                # Replace this with the actual data type conversion based on your database schema
                # Make sure to handle potential ValueError if the conversion fails
                try:
                    value = int(value)
                except ValueError:
                    pass  # Handle the error appropriately for your application

                new_row_data.append(value)

            # Execute the INSERT statement
            self.db_manager.cursor.execute(insert_query, tuple(new_row_data))
            self.db_manager.conn.commit()
            self.db_manager.log_audit(self.username, f"inserted into {table}")

            new_empty_entry = Entry(data_window, width=15)
            new_empty_entry.grid(row=len(empty_entry_widgets) + 1, column=0, padx=5, pady=5)
            empty_entry_widgets.append(new_empty_entry)

            # Display success message
        except Exception as e:
            # Handle any errors that occur during the insert
            print(f"An error occurred: {e}")
    
    def execute_sql_command(self, sql_command, data_window):
        try:
            print(f"command is:  {sql_command}")
            self.db_manager.cursor.execute(sql_command)
            self.db_manager.conn.commit()
            messagebox.showinfo("info", "SQL Command Executed Successfully!", parent=data_window)
        except Exception as e:
            messagebox.showinfo("info", "Error - Invalid SQL query!", parent=data_window)
    
    def refresh_data_window(self, data_window, title, table, upqueryy):
        data_window.destroy()
        queryy = f"SELECT * from {table}"
        self.db_manager.cursor.execute(queryy)
        updated_data = self.db_manager.cursor.fetchall()
        self.display_data_window(updated_data, title, table, upqueryy)



    def logout(self):
        # logging out, destroy admin panel window and open login window
        self.root.destroy()
        # Log the logout event
        
        self.db_manager.log_audit(self.username, 'Logout')
        # exit and reopen the application
        os.execl(sys.executable, sys.executable, *sys.argv)
