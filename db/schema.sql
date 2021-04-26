-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

CREATE TABLE Category (
    id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(30) NOT NULL
);

CREATE TABLE Product (
    id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT
    product_name VARCHAR(30) NOT NULL,
    price DECIMAL(10,2) NOT NULL IS DECIMAL, -- is correct?
    stock INTEGER DEFAULT 10 NOT NULL IS NUMERIC, -- correct?
    category_id INT,
    CONSTRAINT fk_category FOREIGN KEY (category_id) REFERENCES Category(id)
     
);

CREATE TABLE tag (
id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
tag_name VARCHAR(30)
);

CREATE TABLE ProductTag (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    product_id INTEGER, -- ref product model's id
    tag_id INTEGER, -- references tag model's id
    CONSTRAINT fk_product FOREIGN KEY (product_id) REFERENCES Product(id),
    CONSTRAINT fk_tag FOREIGN KEY (tag_id) REFERENCES tag(id)
);

