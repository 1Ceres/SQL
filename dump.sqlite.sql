-- TABLE
CREATE TABLE customers (
   id int,
   first_name varchar(255),
   last_name varchar(255),
   address varchar(255)
  );
CREATE TABLE demo (ID integer primary key, Name varchar(20), Hint text );
CREATE TABLE orders(
  id int not NULL,
  order_number int,
  customer_id int,
  product_id int,
  PRIMARY key (id),
  FOREIGN Key (customer_id) REFERENCES customers(id),
  FOREIGN key (product_id) REFERENCES Products(id) 
);
CREATE TABLE Products (
    id integer NOT NULL,
    name  STRING,
    price MONEY, stock integer,
  	PRIMARY KEY (id)
);
 
-- INDEX
 
-- TRIGGER
 
-- VIEW
 
