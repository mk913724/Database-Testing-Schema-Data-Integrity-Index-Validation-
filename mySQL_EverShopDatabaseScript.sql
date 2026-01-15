
use classicmodels
show tables
select * from customers
SELECT COUNT(*) AS NumberOfColumns FROM information_schema.columns WHERE table_name = 'customers'
SELECT column_name FROM information_schema.columns WHERE table_name = 'customers'
SELECT column_name, data_type FROM information_schema.columns WHERE table_name = 'customers';
SELECT column_name, column_type FROM information_schema.columns WHERE table_name = 'customers';
SELECT column_name, is_nullable FROM information_schema.columns WHERE table_name = 'customers';
SELECT column_name, column_key FROM information_schema.columns WHERE table_name = 'customers';SELECT column_name, column_key FROM information_schema.columns WHERE table_name = 'customers';
SELECT column_name, column_default FROM information_schema.columns WHERE table_name = 'customers';
SHOW KEYS FROM customers WHERE Key_name = 'PRIMARY';
SELECT constraint_name FROM information_schema.key_column_usage WHERE table_name = 'customers' AND referenced_table_name IS NOT NULL;
SHOW INDEX FROM customers WHERE Non_unique = 0;
SELECT column_name, extra FROM information_schema.columns WHERE table_name = 'customers';
SELECT table_collation FROM information_schema.tables WHERE table_name = 'customers';
SELECT customer_id, COUNT(*) AS cnt FROM customers GROUP BY customer_id HAVING cnt > 1;
INSERT INTO customers (customer_id, customer_name) VALUES (NULL, 'Test User');
SHOW INDEX FROM customers;
INSERT INTO customers (email) VALUES ('test@email.com'),('test@email.com');
INSERT INTO customers (address) VALUES (NULL);
INSERT INTO orders (order_id, customer_id) VALUES (99999, 999999);
INSERT INTO customers (customer_name) VALUES ('Default Test'); SELECT * FROM customers WHERE customer_name='Default Test';
INSERT INTO customers (customer_id) VALUES (-1);
INSERT INTO customers (customer_name) VALUES (REPEAT('A',300));
INSERT INTO customers (customer_name) VALUES ('AI Test1'),('AI Test2'); SELECT customer_id FROM customers ORDER BY customer_id DESC LIMIT 2;
SELECT o.* FROM orders o LEFT JOIN customers c ON o.customer_id=c.customer_id WHERE c.customer_id IS NULL;
INSERT INTO orders (order_date) VALUES ('2025-99-99');
INSERT INTO customers (status) VALUES ('INVALID');
DELETE FROM customers WHERE customer_id=1; SELECT * FROM orders WHERE customer_id=1;
SHOW INDEX FROM customers;
EXPLAIN SELECT * FROM customers WHERE customer_id=1;
SHOW FULL TABLES WHERE Table_type='VIEW';
SELECT * FROM customer_orders_view LIMIT 5;
