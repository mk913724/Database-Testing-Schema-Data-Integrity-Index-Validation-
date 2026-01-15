
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