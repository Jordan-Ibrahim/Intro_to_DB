import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="Phoebeibro1@",
    database="alx_book_store"
)

print(mydb.get_server_info())

mycursor = mydb.cursor()

try:
    mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
    print("Database created or already exists.")
    mycursor.execute("USE alx_book_store")
except mysql.connector.Error as err:
    print(f"Error: {err}")