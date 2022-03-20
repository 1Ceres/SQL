--- 20-03-2022 12:12:15
--- SQLite
CREATE TABLE customers (
   id int,
   first_name varchar(255),
   last_name varchar(255),
   address varchar(255)
  );

--- 20-03-2022 12:12:16
--- SQLite
/***** ERROR ******
table customers already exists
 ----- 
CREATE TABLE customers (
   id int,
   first_name varchar(255),
   last_name varchar(255),
   address varchar(255)
  );
*****/

--- 20-03-2022 12:13:35
--- SQLite
SELECT * FROM customers;

--- 20-03-2022 12:18:32
--- SQLite
INSERT INTO customers (id,first_name,last_name,address) VALUES (
  '1',
  'John ',
  'Doe',
  '32 Cherry Blvd'
); SELECT * FROM customers;

--- 20-03-2022 12:18:57
--- SQLite
INSERT INTO customers (id,first_name,last_name,address) VALUES (
  '2',
  'Angela',
  'Yu',
  '12 Sunset Drive'
); SELECT * FROM customers;

--- 20-03-2022 12:36:23
--- SQLite
/***** ERROR ******
near ")": syntax error
 ----- 
CREATE TABLE Products (
    id integer NOT NULL,
    name  STRING,
    price MONEY,
  	PRIMARY KEY (id),
);
*****/

--- 20-03-2022 12:36:27
--- SQLite
/***** ERROR ******
near ")": syntax error
 ----- 
CREATE TABLE Products (
    id integer NOT NULL,
    name  STRING,
    price MONEY,
  	PRIMARY KEY (id),
);
*****/

--- 20-03-2022 12:36:39
--- SQLite
CREATE TABLE Products (
    id integer NOT NULL,
    name  STRING,
    price MONEY,
  	PRIMARY KEY (id)
);

--- 20-03-2022 12:37:08
--- SQLite
SELECT * FROM Products;

--- 20-03-2022 12:39:08
--- SQLite
INSERT INTO Products
VALUES (1, "Pen", 1.20);

--- 20-03-2022 12:39:19
--- SQLite
SELECT * FROM Products;

--- 20-03-2022 12:40:34
--- SQLite
INSERT INTO Products (id, name)
VALUES (2, "Pencil");

--- 20-03-2022 12:40:40
--- SQLite
SELECT * FROM Products;

--- 20-03-2022 12:42:44
--- SQLite
DELETE FROM demo;

--- 20-03-2022 12:43:07
--- SQLite
SELECT `sql` FROM `sqlite_master` WHERE name LIKE 'customers' AND type LIKE 'table';

--- 20-03-2022 12:43:28
--- Schema customers
/***** ERROR ******
table customers already exists
 ----- 
CREATE TABLE customers (
   id int,
   first_name varchar(255),
   last_name varchar(255),
   address varchar(255)
  PRIMARY key (id)
  );
*****/

--- 20-03-2022 12:57:23
--- Schema customers
SELECT * FROM customers;

--- 20-03-2022 12:58:07
--- Schema customers
/***** ERROR ******
no such column: name
 ----- 
SELECT name, price FROM customers;
*****/

--- 20-03-2022 12:58:13
--- Schema customers
SELECT * FROM Products;

--- 20-03-2022 12:58:21
--- Schema customers
SELECT name, price FROM Products;

--- 20-03-2022 12:59:15
--- Schema customers
SELECT * FROM Products WHERE id=1;

--- 20-03-2022 13:00:32
--- Schema customers
SELECT * FROM Products;

--- 20-03-2022 13:01:51
--- Schema customers
UPDATE Products
SET price=0.8
WHERE id=2;

--- 20-03-2022 13:01:56
--- Schema customers
SELECT * FROM Products;

--- 20-03-2022 13:02:33
--- Schema customers
/***** ERROR ******
near "PRIMARY": syntax error
 ----- 
UPDATE customers
SET PRIMARY KEY = (id);
*****/

--- 20-03-2022 13:02:58
--- SQLite
SELECT `sql` FROM `sqlite_master` WHERE name LIKE 'customers' AND type LIKE 'table';

--- 20-03-2022 13:03:18
--- Schema customers
/***** ERROR ******
table customers already exists
 ----- 
CREATE TABLE customers (
   id int,
   first_name varchar(255),
   last_name varchar(255),
   address varchar(255)
  PRIMARY KEY (id)
  );
*****/

--- 20-03-2022 13:03:30
--- SQLite
SELECT `sql` FROM `sqlite_master` WHERE name LIKE 'Products' AND type LIKE 'table';

--- 20-03-2022 13:05:06
--- SQLite
ALTER TABLE Products
add stock integer;

--- 20-03-2022 13:05:11
--- SQLite
SELECT * FROM Products;

--- 20-03-2022 13:06:18
--- SQLite
/***** ERROR ******
near "TABLE": syntax error
 ----- 
UPDATE TABLE Products
SET stock = 32
WHERE id=1
SET stock =12
WHERE id=2;
*****/

--- 20-03-2022 13:06:32
--- SQLite
/***** ERROR ******
near "TABLE": syntax error
 ----- 
UPDATE TABLE Products
SET stock = 32
WHERE id=1;
*****/

--- 20-03-2022 13:06:40
--- SQLite
SELECT * FROM Products;

--- 20-03-2022 13:07:28
--- SQLite
/***** ERROR ******
near "table": syntax error
 ----- 
UPDATE table Products
SET stock = 12
WHERE id = 2;
*****/

--- 20-03-2022 13:07:38
--- SQLite
UPDATE Products
SET stock = 12
WHERE id = 2;

--- 20-03-2022 13:07:48
--- SQLite
UPDATE Products
SET stock = 32
WHERE id =1;

--- 20-03-2022 13:07:58
--- SQLite
SELECT * FROM Products;

--- 20-03-2022 13:10:38
--- SQLite
DELETE FROM Products
WHERE id=2;

--- 20-03-2022 13:10:42
--- SQLite
SELECT * FROM Products;

--- 20-03-2022 13:12:08
--- SQLite
UPDATE Products
set id=2, name="Pencil", price=0.80, stock=12;

--- 20-03-2022 13:12:27
--- SQLite
SELECT * FROM Products;

--- 20-03-2022 13:13:16
--- SQLite
INSERT INTO Products
VALUES (1, "Pen", 1.20, 32);

--- 20-03-2022 13:13:20
--- SQLite
SELECT * FROM Products;

--- 20-03-2022 13:17:54
--- SQLite
CREATE TABLE orders(
  id int not NULL,
  order_number int,
  customer_id int,
  product_id int,
  PRIMARY key (id),
  FOREIGN Key (customer_id) REFERENCES customers(id),
  FOREIGN key (product_id) REFERENCES Products(id) 
);

--- 20-03-2022 13:17:59
--- SQLite
SELECT * FROM orders;

--- 20-03-2022 13:18:05
--- SQLite
SELECT * FROM orders;

--- 20-03-2022 13:18:09
--- SQLite
SELECT `sql` FROM `sqlite_master` WHERE name LIKE 'orders' AND type LIKE 'table';

--- 20-03-2022 13:19:50
--- SQLite
INSERT INTO orders
VALUES (1, 4362, 2, 1);

--- 20-03-2022 13:19:55
--- SQLite
SELECT * FROM orders;

--- 20-03-2022 13:23:40
--- SQLite
SELECT orders.order_number, customers.first_name, customers.last_name, customers.address
FROM orders
inner join customers on orders.customer_id = customers.id;

--- 20-03-2022 13:26:08
--- SQLite
SELECT orders.order_number, Products.name, Products.price, Products.stock
FROM orders
inner join Products on orders.product_id = Products.id;

--- 20-03-2022 13:26:45
--- SQLite
SELECT orders.order_number, Products.name, Products.price
FROM orders
inner join Products on orders.product_id = Products.id;

