-- create database dynamites;

-- CREATE TABLE users (
--  id SERIAL PRIMARY KEY,
--  name VARCHAR(100),
--  email VARCHAR(100) UNIQUE
-- );

CREATE DATABASE ecommerce;

use ecommerce;

CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    password VARCHAR(255)
);

CREATE TABLE Products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10, 2),
    stock_quantity INT
);

CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE Order_Items (
    order_id INT,
    product_id INT,
    quantity INT,
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);


SHOW tables;

SELECT table_name
FROM information_schema.tables 
WHERE table_schema = 'ecommerce';

SELECT column_name
FROM information_schema.columns 
WHERE table_schema = 'users';

SELECT * FROM users;

INSERT INTO users(username, email, password)
VALUES('lumi007','od.fakorede@gmail.com','asdf12345');

