# Recipea_App_CFGDegree
Final Project for CFGDegree

**Team:** group 6
1.  Danielle Maria Perez Lott
2.  Ella Myton
3.  Elizabeth Turay
4.  Isolda Liborio
5.  Lidiia Kliuchna
6.  Raluca Teslovan



# Instructions 
(to run the application (for Mac/Linux):

  

## Set-up the database

  

1. Using MySQLWorkbench, connect to MySQL and run all instructions contained in the `app/db/schema/Recipea_App_User_Fed_DB.sql` file. You can run them one by one.

  
  

## Set-up dev environment

  

1.  **Create a virtual environment**

`cd <your virtual environment folder>`

`python -m venv <name of venv>`

`source <path of venv>/bin/activate`

  

2.  **Clone the repository**

`cd <project location>`

`git clone <repo url>`

  

3.  **Install dependencies**

`pip install -r requirements.txt`

  

4.  **Create the .env file**

Make a copy of `.env.sample` and name it `.env`. In this new file, fill in the variables with the missing credentials. E.g:

`MYSQL_USER=root`

  

4.  **Run the Flask app**

`cd app`

`python run.py`

The application should be running on `localhost:5000`

  
  

## Test the API

1. Once the app is running you can start making requests using the API endpoints.

-  `GET` requests can be made from the browser

-- `http://127.0.0.1:5000/search/edamam?Health=Kosher&cuisineType=italian&ingredient=potato`

- For `POST`, you can use the app [Postman](https://www.postman.com/downloads/) or the command `curl` using the terminal, or create a file with the client side.

-- `add link to Postman docs/tutorial`

Using curl from the terminal:

-- `curl -X POST -H "Content-Type: application/json" -d '{"recipe_name": "Moqueca baiana vegetariana", "cuisine_type": "brazilian", "health": "vegetarian", "meal_type": "lunch/dinner", "cooking_directions": "Cook well", "preparation_time": "60", "portions": "7", "image_url": "", "ingredients": [{"name": "palm oil", "quantity": "1", "measure": "bottle"}, {"name": "coconut milk", "quantity": 1, "measure": "can"}]}' localhost:5000/recipes`

  
## App architecture  
### `app/`
The main folder for the application

### `app/api/edamam.py`
Methods to interact with the Edamam API. They will be called from `app/routes/api_routes.py`

### `app/api/recipea_db.py`
Methods to interact with the Recipea database (MySQL). They will be called from `app/routes/api_routes.py`

### `app/api/db/mysql_connector.py`
Method to connect to MySQL database. The method `connect()` contained in this file needs to be imported wherever you need to connect to the DB.

### `app/api/routes/api_routes.py`
 Where the API endpoints are declared 
 
### `app/templates/index.html` 
Store HTML templates

### `app/__init__.py  `
File to indicate that the package can be imported. 

### `app/run.py  `
Application entry point. 
This is where the Flask app is initialized and the routes are registered. 

### `.env.sample  `
It contains sensitive information of credential acesses,  like connection credentials, API keys, etc. 
A template for the .env file. See instructions above.

### `requirements.txt  `
The requirements package for the application

## Folder structure

```
recipea/  
├── app/  
│   ├── api/  
│   │   ├── edamam.py  
│   │   ├── recipea_db.py  
│   ├── db/  
│   │   ├── schema/  
│   │   │    ├── Recipea_App_User_Fed_DB.sql  
│   │   │    ├── Recipea_ERD.mwb  
│   │   ├── mysql_connector.py  
│   ├── routes/  
│   │   ├── api_routes.py  
│   ├── templates/  
│   │   ├── index.html  
│   ├── __init__.py  
│   ├── run.py  
├── docs/  
│   ├── folder_structure.txt  
│   ├── Recipe Match App.docx  
├── .env.sample  
├── requirements.txt  
.gitignore  
README.md
```
