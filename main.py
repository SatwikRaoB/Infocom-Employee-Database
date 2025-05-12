from backend import DatabaseManager
from frontend import InfocomUI
import tkinter as tk

if __name__ == "__main__":
    # Initialize Database and create tables
    db_manager = DatabaseManager()
    db_manager.create_tables()

    # Initialize Tkinter UI
    root = tk.Tk()
    app = InfocomUI(root, db_manager)
    root.mainloop()

    # Close database connection
    db_manager.close_connection()