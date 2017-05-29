create database bamazon;

use bamazon;

create table products (
	item_id INT NOT NULL,
    product_name VARCHAR(100) NULL,
    department_name VARCHAR(100) NULL,
    price DECIMAL(10,2) NULL,
    stock_quantity INT NULL,
    PRIMARY KEY(item_id)

);

insert into products (item_id, product_name, department_name, price, stock_quantity)
values("101", "dog food", "pets", 19.99, 5),
	  ("102", "cat food", "pets", 19.99, 6),
	  ("103", "bananas", "food", 3.99, 3),
	  ("104", "sandles", "shoes", 10.99, 11),
	  ("105", "soccer ball", "sports", 12.99, 7),
	  ("106", "usb", "electronics", 11.99, 3),
	  ("107", "plates", "household", 7.99, 12),
	  ("108", "coffee mug", "household", 4.99, 2),
	  ("109", "shampoo", "household", 6.99, 0),
	  ("110", "printing paper", "office", 5.99, 3);
