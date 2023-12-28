import os
from mysql import connector
from dotenv import load_dotenv

# Load environment variables from .env file
load_dotenv()


def connect():
    # Access the environment variables (on the file .env)
    return connector.connect(
        host=os.getenv("MYSQL_HOST"),
        user=os.getenv("MYSQL_USER"),
        password=os.getenv("MYSQL_PASSWORD"),
        database=os.getenv("MYSQL_DB")
    )
