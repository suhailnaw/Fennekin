DROP DATABASE IF EXISTS pizzeria;

CREATE DATABASE pizzeria;

USE pizzeria;

CREATE TABLE users (
  id int NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(20) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  email VARCHAR(20) NOT NULL,
  phone_number VARCHAR(20) DEFAULT NULL,
  address_id int,
  PRIMARY KEY (ID)
);

CREATE TABLE addresses (
  id int NOT NULL AUTO_INCREMENT,
  user_id int NOT NULL,
  street_number VARCHAR(20) NOT NULL,
  street_name VARCHAR(20) NOT NULL,
  apt_number VARCHAR(20) NOT NULL,
  city VARCHAR(20) DEFAULT NULL,
  state VARCHAR(20) DEFAULT NULL,
  zip_code int NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE billing (
  id int NOT NULL AUTO_INCREMENT,
  user_id int NOT NULL,
  card_id VARCHAR(20) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE cards (
  id int NOT NULL AUTO_INCREMENT,
  card_name VARCHAR(20) DEFAULT NULL,
  user_id int NOT NULL,
  card_number VARCHAR(20) NOT NULL,
  CCV VARCHAR(10) DEFAULT NULL,
  expiration Date NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE pizza (
  id int NOT NULL AUTO_INCREMENT,
  user_id int NOT NULL,
  size_id int NOT NULL,
  crust_id int NOT NULL,
  price int NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE favorites (
  id int NOT NULL AUTO_INCREMENT,
  user_id int NOT NULL,
  pizza_id int NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE pizza_toppings (
  id int NOT NULL AUTO_INCREMENT,
  pizza_id int NOT NULL,
  topping_id int NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE sizes (
  id int NOT NULL AUTO_INCREMENT,
  name VARCHAR(20) NOT NULL,
  price FLOAT NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE toppings (
  id int NOT NULL AUTO_INCREMENT,
  name VARCHAR(20) NOT NULL,
  price FLOAT NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE crusts (
  id int NOT NULL AUTO_INCREMENT,
  name VARCHAR(20) NOT NULL,
  price int NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE orders (
  id int NOT NULL AUTO_INCREMENT,
  user_id int NOT NULL,
  pizza_id int NOT NULL,
  date Date NOT NULL,
  price int NOT NULL,
  PRIMARY KEY (ID)
);
/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

-- TOPPINGS
INSERT INTO toppings(name, price) VALUES ('pepperoni', 2);
INSERT INTO toppings(name, price) VALUES ('mushrooms', 1.5);
INSERT INTO toppings(name, price) VALUES ('jalapenos', 1);
INSERT INTO toppings(name, price) VALUES ('bell peppers', 1.25);
INSERT INTO toppings(name, price) VALUES ('green peppers', 1.25);
INSERT INTO toppings(name, price) VALUES ('onions', 0.75);
INSERT INTO toppings(name, price) VALUES ('sausage', 0.75);
INSERT INTO toppings(name, price) VALUES ('bacon', 5.75);
INSERT INTO toppings(name, price) VALUES ('extra cheese', 1.75);
INSERT INTO toppings(name, price) VALUES ('blue cheese', 8.75);
INSERT INTO toppings(name, price) VALUES ('black olives', 2.25);
INSERT INTO toppings(name, price) VALUES ('pineapple', 4.50);
INSERT INTO toppings(name, price) VALUES ('spinach', 1.15);
INSERT INTO toppings(name, price) VALUES ('red caviar', 5.65);
INSERT INTO toppings(name, price) VALUES ('black caviar', 10.00);
INSERT INTO toppings(name, price) VALUES ('royal golden caviar', 94.31);
INSERT INTO toppings(name, price) VALUES ('Saffron', 371.49);
INSERT INTO toppings(name, price) VALUES ('traffels', 371.49);

-- SIZES
INSERT INTO sizes(name, price) VALUES ('rofl_size', 0.99);
INSERT INTO sizes(name, price) VALUES ('S', 9.99);
INSERT INTO sizes(name, price) VALUES ('M', 16.99);
INSERT INTO sizes(name, price) VALUES ('L', 22.99);
INSERT INTO sizes(name, price) VALUES ('XL', 31.99);
INSERT INTO sizes(name, price) VALUES ('Galactical', 750.99);

-- CRUSTS
INSERT INTO crusts(name, price) VALUES ('Thin Crust', 9.99);
INSERT INTO crusts(name, price) VALUES ('Thick Crust', 9.99);
INSERT INTO crusts(name, price) VALUES ('Pan Crust', 9.99);
INSERT INTO crusts(name, price) VALUES ('Deep Crust', 9.99);
INSERT INTO crusts(name, price) VALUES ('Cheese Filled Crust', 9.99);
INSERT INTO crusts(name, price) VALUES ('Stuffed Filled Crust', 9.99);

-- USERS
INSERT INTO users(first_name, last_name, email, phone_number) VALUES ('Misulechka', 'Grand ArchMage of Flames', 'rofl@gmail.com', '123 (456) 7890');
INSERT INTO users(first_name, last_name, email, phone_number) VALUES ('Gil', 'Kwak', 'rofl@gmail.com', '123 (456) 7890');
INSERT INTO users(first_name, last_name, email, phone_number) VALUES ('Ilya', 'Yanchuk', 'rofl@gmail.com', '123 (456) 7890');
INSERT INTO users(first_name, last_name, email, phone_number) VALUES ('Suhail', 'Ansari', 'rofl@gmail.com', '123 (456) 7890');
