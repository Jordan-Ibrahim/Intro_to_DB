import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="Phoebeibro1@",
    database="alx_book_store"
)

print(mydb.get_server_info())