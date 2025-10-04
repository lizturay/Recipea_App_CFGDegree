# 🍳 Recipea App — CFG Degree Final Project

A full-stack **Flask + MySQL** application that helps users find and store recipes using live data from the **Edamam API**.  
Built collaboratively as part of the Code First Girls Software Engineering Degree.

[![Built with Python](https://img.shields.io/badge/Built%20with-Python%20%7C%20Flask-yellow.svg)](#)
[![Database: MySQL](https://img.shields.io/badge/Database-MySQL-blue.svg)](#)
[![API: Edamam](https://img.shields.io/badge/API-Edamam-green.svg)](#)
[![License: MIT](https://img.shields.io/badge/License-MIT-lightgrey.svg)](LICENSE)

---

## 👩‍💻 Team — Group 6
- **Danielle Maria Perez Lott**  
- **Ella Myton**  
- **Elizabeth Turay**  
- **Isolda Liborio**  
- **Lidiia Kliuchna**  
- **Raluca Teslovan**

---

## 📖 Overview
Recipea connects food enthusiasts with curated recipes through a clean API-driven interface.  
It integrates **Flask**, **MySQL**, and the **Edamam API** to allow users to:
- Search for recipes by cuisine, ingredients, or health tags  
- Add and store personal recipes in a MySQL database  
- Retrieve recipe data programmatically through RESTful endpoints  

This project demonstrates our ability to design, build, and document a multi-layered web application with both external API integration and custom database logic.

---

## ✨ Key Features
- **Edamam API Integration** for real-time recipe search  
- **User Recipe Management** via CRUD endpoints  
- **MySQL Database** with clear schema and entity relationships  
- **RESTful Flask API** architecture  
- **Environment-variable security** with `.env` handling  
- **Postman-ready endpoints** for easy testing  

---

## 🧰 Tech Stack
| Layer | Technology |
|-------|-------------|
| **Frontend** | HTML, Jinja Templates |
| **Backend** | Python 3, Flask |
| **Database** | MySQL (Workbench / Connector) |
| **External API** | Edamam Recipe Search API |
| **Tools** | Postman, cURL, Virtual Env, dotenv |
| **Version Control** | Git & GitHub |

---

## ⚙️ Installation & Setup

### 1️⃣ Set up the Database
Open **MySQL Workbench** and run the SQL script:
```

app/db/schema/Recipea_App_User_Fed_DB.sql

````
Run statements sequentially to create all tables.

### 2️⃣ Create a Virtual Environment (Mac / Linux)
```bash
cd <your-dev-folder>
python -m venv venv
source venv/bin/activate
````

*(On Windows: `venv\Scripts\activate`)*

### 3️⃣ Clone the Repository

```bash
git clone https://github.com/lizturay/Recipea_App_CFGDegree.git
cd Recipea_App_CFGDegree
```

### 4️⃣ Install Dependencies

```bash
pip install -r requirements.txt
```

### 5️⃣ Configure Environment Variables

Duplicate `.env.sample` and rename it `.env`.
Add your credentials:

```
MYSQL_USER=root
MYSQL_PASSWORD=yourpassword
MYSQL_HOST=localhost
MYSQL_DATABASE=Recipea_App_User_Fed_DB
EDAMAM_API_KEY=your_edamam_key
```

### 6️⃣ Run the Flask App

```bash
cd app
python run.py
```

The application runs on **[http://127.0.0.1:5000/](http://127.0.0.1:5000/)**

---

## 🔗 Example API Endpoints

### Search via Edamam API

```
GET http://127.0.0.1:5000/search/edamam?Health=Kosher&cuisineType=italian&ingredient=potato
```

### Add Recipe (POST)

Using cURL:

```bash
curl -X POST -H "Content-Type: application/json" \
-d '{
  "recipe_name": "Moqueca baiana vegetariana",
  "cuisine_type": "brazilian",
  "health": "vegetarian",
  "meal_type": "lunch/dinner",
  "cooking_directions": "Cook well",
  "preparation_time": "60",
  "portions": "7",
  "image_url": "",
  "ingredients": [
    {"name": "palm oil", "quantity": "1", "measure": "bottle"},
    {"name": "coconut milk", "quantity": "1", "measure": "can"}
  ]
}' \
http://127.0.0.1:5000/recipes
```

### Test with Postman

Import endpoints and parameters directly or use cURL commands.
*(Future improvement: Add a Postman Collection link here.)*

---

## 🧩 Application Architecture

```
recipea/
├── app/
│   ├── api/
│   │   ├── edamam.py          # Edamam API integration
│   │   ├── recipea_db.py      # CRUD operations with MySQL
│   ├── db/
│   │   └── schema/
│   │        ├── Recipea_App_User_Fed_DB.sql
│   │        ├── Recipea_ERD.mwb
│   ├── routes/
│   │   └── api_routes.py      # Endpoint declarations
│   ├── templates/
│   │   └── index.html
│   ├── __init__.py
│   └── run.py                 # Flask entry point
├── docs/
│   ├── folder_structure.txt
│   └── Recipe Match App.docx
├── .env.sample
├── requirements.txt
└── README.md
```

---

## 🧠 Challenges & Lessons Learned

* Managing **API keys** securely through environment variables
* Designing a **relational schema** to handle nested recipe data
* Structuring a multi-file Flask project with clean imports
* Debugging **cross-module imports** and **JSON payloads**
* Practising **team collaboration** with Git branching and merge requests

---

## 📜 License

Distributed under the [MIT License](LICENSE).
© 2025 Team 6 – Recipea App | Code First Girls Degree

```
