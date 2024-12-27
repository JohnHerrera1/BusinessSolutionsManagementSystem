# Business Solutions Management System

A full-stack web application designed to manage business operations efficiently. This project includes user management, API integration, and database operations, built using Python (Flask), PHP, MySQL, and a responsive frontend.

---

## Features

- **User Management**: Role-based access for admins and users.
- **API Integration**: Data flow between backend services using REST APIs.
- **Database Operations**: CRUD functionality for users and orders stored in MySQL.
- **Responsive Frontend**: Built with HTML, CSS, Bootstrap, and JavaScript.

---

## Technologies Used

### Backend:
- **Python (Flask)**: Used for building RESTful APIs and backend services.
- **PHP**: Additional backend functionality, including database interaction.
- **MySQL**: Relational database for data storage.

### Frontend:
- **HTML5/CSS3**: Structure and styling.
- **Bootstrap**: Responsive design.
- **JavaScript (AJAX)**: Dynamic data loading and frontend interactions.

---

## Prerequisites

Ensure the following are installed:
- [Python 3.10+](https://www.python.org/downloads/)
- [XAMPP](https://www.apachefriends.org/) (Apache and MySQL for PHP)
- [Git](https://git-scm.com/)
- A modern browser (e.g., Chrome, Firefox)

---

## Installation

### Step 1: Clone the Repository
Clone this repository to your local machine:
```bash
git clone https://github.com/JohnHerrera1/BusinessSolutionsManagementSystem.git
cd BusinessSolutionsManagementSystem
```

---

### Step 2: Set Up Python Backend
Navigate to the backend-python folder:
```bash
cd backend-python
```
Create and activate a virtual environment:
```bash
python -m venv BusinessSolutionsManagementSystem
BusinessSolutionsManagementSystem\Scripts\activate
```
Install the required dependencies:
```bash
pip install -r requirements.txt
```
Start the Flask server:
```bash
python app.py
```

---

**Step 3: Set Up PHP Backend**
Copy the backend-php folder to your XAMPP htdocs directory:
```makefile
C:\xampp\htdocs\backend-php
```
Start Apache and MySQL from the XAMPP Control Panel.
Open a browser and test the PHP API:
```arduino
http://localhost/backend-php/api/user.php
```

---

**Step 4: Set Up the Database**
1. Open phpMyAdmin at:
```arduino
http://localhost/phpmyadmin
```
2. Create a database named business_management.

3. Import the schema.sql file located in the database folder.

---

**Usage**
**Python API**

Test the Python API at:
```arduino
http://127.0.0.1:5000/api/users
```
**PHP API
**
Test the PHP API at:
```arduino
http://localhost/backend-php/api/user.php
```
**Frontend**
1. Place the frontend folder in your XAMPP htdocs directory:
```makefile
C:\xampp\htdocs\frontend
```
Open the browser and navigate to:
```arduino
http://localhost/frontend/index.html
```
---

**Project Structure**
```bash
/business-management
│
├── backend-python/          # Python Flask backend
│   ├── app.py
│   ├── requirements.txt
│   └── services/
│       ├── api_service.py
│       └── db_service.py
│
├── backend-php/             # PHP backend
│   ├── index.php
│   ├── api/
│       ├── user.php
│       ├── order.php
│       └── db.php
│
├── database/                # Database schema
│   └── schema.sql
│
├── frontend/                # Frontend application
│   ├── index.html
│   ├── css/
│   │   └── style.css
│   ├── js/
│   │   └── script.js
│   └── img/
│       └── logo.png
│
├── .gitignore               # Ignored files for Git
├── README.md                # Project documentation
└── LICENSE                  # Licensing information
```
---

**Example Output**
**Python API Response
**
```json
{
    "users": [
        {"id": 1, "username": "admin"}
    ]
}
```
**PHP API Response
**
```json
[
    {"id":1,"username":"admin","password":"admin123","role":"admin"},
    {"id":2,"username":"user1","password":"user123","role":"user"}
]
```
---

**Contributing**
Contributions are welcome! Please fork the repository, make changes, and submit a pull request.

---

**Contact**
For questions or support, please contact:
- John Herrera
- JohnHerrera1
