CREATE SEQUENCE id_seq start with 0 increment by 1 minvalue 0 nocache;
CREATE SEQUENCE id_seq2 start with 0 increment by 1 minvalue 0 nocache;

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

INSERT INTO orders (id, customer_id, item, price)
    VALUES (id_seq2.NEXTVAL, 1, 'Sonic Screwdriver', 1000.00);
INSERT INTO orders (id, customer_id, item, price)
    VALUES (id_seq2.NEXTVAL, 2, 'High Quality Broomstick', 40.00);
INSERT INTO orders (id, customer_id, item, price)
    VALUES (id_seq2.NEXTVAL, 1, 'TARDIS', 1000000.00);
    
SELECT customers.name, item, price from customers inner join orders on customers.id=orders.customer_id;
    

SELECT customers.name, customers.email, orders.item, orders.price FROM customers
    LEFT OUTER JOIN orders
    ON customers.id = orders.customer_id;
    
-- SELECT customers.name, customers.email, SUM(orders.price) AS SUM FROM customers
--     LEFT OUTER JOIN orders
--     ON customers.id = orders.customer_id
--     GROUP BY customers.name
--     ORDER BY SUM DESC;
                   
SELECT name, email, SUM(price)
FROM customers
LEFT OUTER JOIN orders on customers.id = order
GROUP BY name, email order by SUM(price) desc;
                   
                   
                   
                   
                   
DROP SEQUENCE id_seq;
DROP SEQUENCE id_seq2;
DROP TABLE customers;
DROP TABLE orders;
