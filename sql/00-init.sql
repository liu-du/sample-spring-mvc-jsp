CREATE DATABASE IF NOT EXISTS web_customer_tracker;

USE web_customer_tracker;

DROP TABLE IF EXISTS customer;
CREATE TABLE customer (
    id int(11) NOT NULL AUTO_INCREMENT,
    first_name varchar(255) DEFAULT NULL,
    last_name varchar(255) DEFAULT NULL,
    email varchar(255) DEFAULT NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

INSERT INTO customer (first_name, last_name, email)
VALUES
    ('David', 'Adams', 'david@email.com'),
    ('John', 'Doe', 'john@email.com'),
    ('Ajay', 'Rao', 'ajay@email.com'),
    ('Mary', 'Public', 'mary@email.com'),
    ('Maxwell', 'Dixon', 'maxwell@email.com');

SELECT * FROM customer;