CREATE SEQUENCE id_seq start with 1 increment by 1 minvalue 0 nocache;

CREATE TABLE customers (
    id INTEGER PRIMARY KEY,
    name VARCHAR2(50),
    email VARCHAR2(50));
    
INSERT INTO customers (id, name, email) VALUES (id_seq.NEXTVAL, 'Doctor Who', 'doctorwho@timelords.com');
INSERT INTO customers (id, name, email) VALUES (id_seq.NEXTVAL, 'Harry Potter', 'harry@potter.com');
INSERT INTO customers (id, name, email) VALUES (id_seq.NEXTVAL, 'Captain Awesome', 'captain@awesome.com');

CREATE TABLE orders (
    id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    item VARCHAR2(50),
    price REAL);

INSERT INTO orders (customer_id, item, price)
    VALUES (1, 'Sonic Screwdriver', 1000.00);
INSERT INTO orders (customer_id, item, price)
    VALUES (2, 'High Quality Broomstick', 40.00);
INSERT INTO orders (customer_id, item, price)
    VALUES (1, 'TARDIS', 1000000.00);
    
SELECT customers.name, item, price from customers inner join orders on customers.id=orders.customer_id;
    

SELECT customers.name, customers.email, orders.item, orders.price FROM customers
    LEFT OUTER JOIN orders
    ON customers.id = orders.customer_id;
    
SELECT customers.name, customers.email, SUM(orders.price) FROM customers
    LEFT OUTER JOIN orders
    ON customers.id = orders.customer_id
    GROUP BY customers.name
    ORDER BY SUM(orders.price) DESC;
                   
DROP SEQUENCE id_seq;
DROP TABLE customers;
DROP TABLE orders;
