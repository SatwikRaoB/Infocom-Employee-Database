# Infocom Employee Database Management System

<br />

---

## 📌 Introduction

The **Infocom Employee Database Management System** is a comprehensive application developed to manage employee data across multiple roles such as Software Engineers (SE), Human Resources (HR), and Public Relations (PR). Built using **Python**, **Tkinter**, and **MySQL**, this system provides secure login, intuitive user interfaces, role-based access, and detailed audit logging.

<br />

---

## 🎯 Project Goals

- **User Authentication:**  
  Secure login system to restrict access to authorized personnel using hashed passwords.

- **Role-Based Interface:**  
  Tailored dashboards and permissions for Admin, SE, HR, PR, and General roles.

- **Database Interaction:**  
  Dynamic interaction with a MySQL database for CRUD operations via Python.

- **GUI with Tkinter:**  
  Easy-to-use graphical interface for seamless navigation and record manipulation.

- **Audit Logging:**  
  Real-time tracking of user activities including login, data manipulation, and query execution.

<br />

---

## 👨‍💻 My Contribution

- Developed secure authentication with password hashing.
- Designed the complete GUI interface with **Tkinter**.
- Engineered MySQL database interaction using `mysql-connector-python`.
- Implemented error handling and data validation for high system reliability.
- Created the logging mechanism to track user actions for audit purposes.

<br />

---

## 🗃️ Database Structure

### 1. `LogIn_Credential`
- `username`, `password`, `role`  
- Stores encrypted login credentials.
- Access: Admin only (R/W)


### 2. `SE_Data`
- `id`, `name`, `projectname`, `supervisor`, `deadline`  
- SE project data.  
- Access: SE & Admin (R/W)


### 3. `Emp_SE`
- `id`, `address`, `phone_no`, `salary`, `bloodgroup`  
- SE personal info.  
- Access: SE, HR, PR, General, Admin (varied)


### 4. `HR_Data`
- `id`, `name`, `department`, `supervisor`  
- HR records.  
- Access: HR & Admin (R/W)


### 5. `Emp_HR`
- `id`, `address`, `phone_no`, `rank`  
- HR employee info.  
- Access: HR, PR, General, Admin (varied)


### 6. `Emp_PR`
- `id`, `address`, `phone_no`, `salary`  
- PR staff data.  
- Access: PR, HR, General, Admin (varied)


### 7. `PR_Data`
- `id`, `firstname`, `last_name`, `dob`  
- PR personal data.  
- Access: PR & Admin (R/W)

<br />

---

## 🧭 Project Flow

1. **Login Page**  
   → Credential verification via `LogIn_Credential`.

2. **Role-Based Dashboards**  
   → Interface varies by user role.

3. **Data Display & Navigation**  
   → Tabular view with intuitive buttons for actions.

4. **CRUD Operations**  
   → Insert, update, delete records dynamically.

5. **SQL Query Execution**  
   → Admins can execute custom SQL queries.

6. **Audit Logging**  
   → Tracks all critical user actions.

7. **Error Handling**  
   → Graceful fallback and user-friendly error prompts.

8. **Logout**  
   → Secure session termination.

<br />

---

## 🛠️ Implementation Details

- **Backend:** Python
- **GUI:** Tkinter
- **Database:** MySQL
- **Libraries:** `mysql-connector-python`, `hashlib`, `tkinter`, etc.

<br />

---

## 🖼️ UI Preview


![image](https://github.com/user-attachments/assets/03d6bd2f-bb1c-4746-a705-8a9a0a267106)

<br />

![image](https://github.com/user-attachments/assets/15bc3d74-313b-4a2c-8838-af7610fc08c5)

<br />


---

### Features:

- ✅ Secure login with password hashing
- ✅ Role-based access control
- ✅ Custom SQL query executor
- ✅ Dynamic GUI rendering per user
- ✅ Complete audit trail logging
- ✅ Robust error and data validation mechanisms

<br />

---

