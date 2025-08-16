CREATE DATABASE IF NOT EXISTS alx_book_store;

USE alx_book_store;

CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(130),
    FOREIGN KEY (author_id) REFERENCES Authors(author_id),
    price DOUBLE,
    publication_date DATE
);

CREATE TABLE Authors (
    author_id (Primary Key),
    author_name VARCHAR(215)
);

CREATE TABLE Customers (
    customer_id (Primary Key),
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
);

CREATE TABLE Orders (
    order_id (Primary Key),
    customer_id (Foreign Key referencing Customers table),
    order_date DATE
);

CREATE TABLE Order_Details (
    orderdetailid (Primary Key),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES  Books (book_id),
    quantity DOUBLE
);