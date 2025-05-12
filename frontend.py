import tkinter as tk
from tkinter import ttk
import mysql.connector
from AdminPanel import AdminPanelClass
from HRPanel import HRPanelClass
from SEPanel import SEPanelClass
from PRPanel import PRPanelClass
from GeneralPanel import GeneralPanelClass
from tkinter import messagebox

class InfocomUI:
    def __init__(self, root, db_manager):
        self.root = root
        self.root.title("Infocom Security System")

        self.db_manager = db_manager

        # Username, Password, Role entry fields
        self.username_label = ttk.Label(root, text="Username:")
        self.username_entry = ttk.Entry(root)

        self.password_label = ttk.Label(root, text="Password:")
        self.password_entry = ttk.Entry(root, show="*")

        self.root.geometry("400x300+{}+{}".format(self.root.winfo_screenwidth() // 4, self.root.winfo_screenheight() // 4))
        # Login button
        self.login_button = ttk.Button(root, text="Login", command=self.login)
        self.root.bind('<Return>', self.login)
        
        # Access control matrix display
        #self.matrix_label = ttk.Label(root, text="Access Control Matrix:")
        #self.matrix_text = tk.Text(root, height=10, width=60, state="disabled")

        # Pack elements
        self.username_label.pack(pady=10)
        self.username_entry.pack(pady=5)
        self.password_label.pack(pady=10)
        self.password_entry.pack(pady=5)
        self.login_button.pack(pady=10)
        #self.admin_panel_label.pack(pady=10)
        #self.user_label.pack(pady=5)
        #self.user_entry.pack(pady=5)
        #self.role_label.pack(pady=5)
        #self.role_entry.pack(pady=5)
        #self.update_role_button.pack(pady=10)
        #self.matrix_label.pack(pady=10)
        #self.matrix_text.pack(pady=10)

##
    def Admin_role_selector(self):
        # Admin panel elements
            self.admin_panel_label = ttk.Label(root, text="Admin Panel:")
            self.user_label = ttk.Label(root, text="User:")
            self.user_entry = ttk.Entry(root)
            self.role_label = ttk.Label(root, text="Role:")
            self.role_entry = ttk.Entry(root)
            self.update_role_button = ttk.Button(root, text="Update Role", command=self.update_role)

    def login(self, event=None):
        username = self.username_entry.get()
        password = self.password_entry.get()

        query = "SELECT role FROM LogIn_Credential WHERE username=%s AND password=%s"
        params = (username, password) # Replace with your actual values
        self.db_manager.cursor.execute(query, params) # Execute the query with parameters
        role = self.db_manager.cursor.fetchone()

        # Validate user credentials
        self.db_manager.cursor.execute('SELECT * FROM LogIn_Credential WHERE username=%s AND password=%s',
                                       (username, password))
        user = self.db_manager.cursor.fetchone()

        if user:
            # Log the database usage in the audit trail
            self.db_manager.log_audit(username, 'Login')
            messagebox.showinfo("Login Successful", "Welcome, {}".format(username))
            if role[0] == "Admin":
                self.open_admin_panel(username)
            elif role[0] == "SE":
                self.open_se_panel(username)
            elif role[0] == "HR":
                self.open_hr_panel(username)
            elif role[0] == "PR":   
                self.open_pr_panel(username)
            elif role[0] == "General":    
                self.open_general_panel(username)

        else:
            messagebox.showerror("Login Failed", "Invalid credentials")


##
    def update_role(self):
        username = self.user_entry.get()
        new_role = self.role_entry.get()

        # Update user role
        self.db_manager.update_user_role(username, new_role)
        messagebox.showinfo("Role Updated", "Role for {} updated to {}".format(username, new_role))

        # Clear the entry fields
        self.user_entry.delete(0, tk.END)
        self.role_entry.delete(0, tk.END)

        # Update the Access Control Matrix display
        self.update_matrix_display()


    def open_admin_panel(self, username):
        # Destroy the login window
        self.root.destroy()

        # Open the admin panel window
        admin_panel_window = tk.Tk()
        admin_panel = AdminPanelClass(admin_panel_window, self.db_manager, username)
        admin_panel_window.mainloop()

    def open_se_panel(self, username):
        # Destroy the login window
        self.root.destroy()

        # Open the admin panel window
        se_panel_window = tk.Tk()
        se_panel = SEPanelClass(se_panel_window, self.db_manager, username)
        se_panel_window.mainloop()   

    def open_hr_panel(self, username):
        # Destroy the login window
        self.root.destroy()

        # Open the admin panel window
        hr_panel_window = tk.Tk()
        hr_panel = HRPanelClass(hr_panel_window, self.db_manager, username)
        hr_panel_window.mainloop()  


    def open_pr_panel(self, username):
        # Destroy the login window
        self.root.destroy()

        # Open the admin panel window
        pr_panel_window = tk.Tk()
        pr_panel = PRPanelClass(pr_panel_window, self.db_manager, username)
        pr_panel_window.mainloop()  

    def open_general_panel(self, username):
        # Destroy the login window
        self.root.destroy()

        # Open the admin panel window
        general_panel_window = tk.Tk()
        general_panel = GeneralPanelClass(general_panel_window, self.db_manager, username)
        general_panel_window.mainloop()         