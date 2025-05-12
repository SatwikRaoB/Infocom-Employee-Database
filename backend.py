import tkinter as tk
from tkinter import ttk
import mysql.connector
from tkinter import messagebox

class DatabaseManager:
    
    def __init__(self):
        # Connect to the MySQL database
        self.conn = mysql.connector.connect(
            host="localhost",
            user="root",
            password="admin",
            database="infocom"
        )
        self.cursor = self.conn.cursor()
        cursor = self.conn.cursor(buffered=True)

    def create_tables(self):
        # Create tables if they don't exist
        tables = [
            "CREATE TABLE IF NOT EXISTS LogIn_Credential (username VARCHAR(255) PRIMARY KEY, password VARCHAR(255), role VARCHAR(255))",
            "CREATE TABLE IF NOT EXISTS SE_Data (id INT PRIMARY KEY, name VARCHAR(255), projectname VARCHAR(255), supervisor VARCHAR(255), deadline DATE)",
            "CREATE TABLE IF NOT EXISTS Emp_SE (id INT PRIMARY KEY, address VARCHAR(255), phone_no VARCHAR(20), salary INT, bloodgroup VARCHAR(10))",
            "CREATE TABLE IF NOT EXISTS HR_data (id INT PRIMARY KEY, name VARCHAR(255), department VARCHAR(255), supervisor VARCHAR(255))",
            "CREATE TABLE IF NOT EXISTS Emp_HR (id INT PRIMARY KEY, address VARCHAR(255), phone_no VARCHAR(20), `rank` VARCHAR(50))",
            "CREATE TABLE IF NOT EXISTS Emp_PR (id INT PRIMARY KEY, address VARCHAR(255), phone_no VARCHAR(20), salary INT)",
            "CREATE TABLE IF NOT EXISTS PR_Data (id INT PRIMARY KEY, firstname VARCHAR(255), lastname VARCHAR(255), dob DATE)",
            "CREATE TABLE IF NOT EXISTS AuditTrail (id INT AUTO_INCREMENT PRIMARY KEY, username VARCHAR(255), action VARCHAR(255), timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP)"
        ]

        for table in tables:
            self.cursor.execute(table)

        # Commit and close the connection
        self.conn.commit()

    def insert_user(self, username, password, role):
        # Insert a new user into LogIn_Credential table
        query = "INSERT INTO LogIn_Credential (username, password, role) VALUES (%s, %s, %s)"
        values = (username, password, role)
        self.cursor.execute(query, values)
        self.conn.commit()

    def update_user_role(self, username, new_role):
        # Update the role of an existing user
        query = "UPDATE LogIn_Credential SET role = %s WHERE username = %s"
        values = (new_role, username)
        self.cursor.execute(query, values)
        self.conn.commit()

    def log_audit(self, username, action):
        # Log the audit trail
        query = "INSERT INTO AuditTrail (username, action, timestamp) VALUES (%s, %s, NOW())"
        values = (username, action)
        try:
            self.cursor.execute(query, values)
            self.conn.commit()  # Commit the changes to the database
        except mysql.connector.Error as err:
            print(f"Error logging audit: {err}")
      
    def close_connection(self):
        # Close the cursor and the connection
        self.cursor.close()
        self.conn.close()
    