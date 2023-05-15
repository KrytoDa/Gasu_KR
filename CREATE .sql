CREATE TABLE IF NOT EXISTS CW_categories_of_item
(
categories_of_item_id INT PRIMARY KEY,
title VARCHAR(300),
descriprion VARCHAR(380)
);


CREATE TABLE IF NOT EXISTS CW_item
(
item_id INT PRIMARY KEY,
title VARCHAR(300),
descriprion VARCHAR(380),
amount INT,
price DECIMAL(8,2),
rating INT,
review VARCHAR(800)
);

CREATE TABLE IF NOT EXISTS CW_categ_and_item
(
categories_of_item_id INT REFERENCES CW_categories_of_item(categories_of_item_id),
item_id INT REFERENCES CW_item(item_id),
PRIMARY KEY(categories_of_item_id, item_id)
);

CREATE TABLE IF NOT EXISTS CW_k_customers
(
k_customers_id INT PRIMARY KEY,
email VARCHAR(300) UNIQUE,
password VARCHAR(380),
first_name VARCHAR(800),
last_name VARCHAR(800),
adress VARCHAR(800)
);

CREATE TABLE IF NOT EXISTS CW_shopping_cart
(
k_customers_id INT REFERENCES CW_k_customers(k_customers_id),
item_id INT REFERENCES CW_item(item_id),
PRIMARY KEY(k_customers_id, item_id),
amount INT
);

CREATE TABLE IF NOT EXISTS CW_k_order
(
order_id INT PRIMARY KEY,
status VARCHAR(300),
payment_date DATE,
amount INT,
k_customers_id INT REFERENCES CW_k_customers(k_customers_id),
item_id INT REFERENCES CW_item(item_id)
);

CREATE TABLE IF NOT EXISTS CW_ordered_item
(
order_id INT REFERENCES CW_k_order(order_id),
item_id INT REFERENCES CW_item(item_id),
PRIMARY KEY(order_id, item_id)
);
