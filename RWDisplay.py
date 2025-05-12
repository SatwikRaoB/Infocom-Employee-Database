import tkinter as tk
from tkinter import ttk
import os
import sys
import mysql.connector
from tkinter import Toplevel, Label, Entry, Button
from tkinter import messagebox

def display_data_window (self, data, title, table, queryy):
    data_window = Toplevel(self.root)
    data_window.title(title)
    self.root.geometry("400x300+{}+{}".format(self.root.winfo_screenwidth() // 4, self.root.winfo_screenheight() // 4))
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

        messagebox.showinfo("Save Changes", "Changes Saved Successfully!")     

        
    