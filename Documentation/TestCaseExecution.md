## Database Testing – Table Schema Validation

| TC ID | Title / Description          | Steps / SQL Query                                                                               | Expected Result                         | Actual Result                                 | Test Data | Priority | Status     |
| ----- | ---------------------------- | ----------------------------------------------------------------------------------------------- | --------------------------------------- | --------------------------------------------- | --------- | -------- | ---------- |
| TC001 | Check table presence         | `SHOW TABLES;`                                                                                  | All required tables should be displayed | All required tables are displayed             | NA        | P1       | PASSED     |
| TC002 | Check table name conventions | `SHOW TABLES;`                                                                                  | Naming convention followed              | All table names follow naming standards       | NA        | P1       | PASSED     |
| TC003 | Check number of columns      | `SELECT COUNT(*) FROM information_schema.columns WHERE table_name='customers';`                 | Matches DB design                       | Column count does not match approved design   | NA        | P1       | **FAILED** |
| TC004 | Check column names           | `SELECT column_name FROM information_schema.columns WHERE table_name='customers';`              | Names match DB design                   | Column names match database design            | NA        | P1       | PASSED     |
| TC005 | Check column data types      | `SELECT column_name, data_type FROM information_schema.columns WHERE table_name='customers';`   | Correct data types                      | One or more columns have incorrect data types | NA        | P1       | **FAILED** |
| TC006 | Check column sizes           | `SELECT column_name, column_type FROM information_schema.columns WHERE table_name='customers';` | Correct column size                     | Column sizes match design                     | NA        | P1       | PASSED     |
| TC007 | Check NULL constraints       | `SELECT column_name, is_nullable FROM information_schema.columns WHERE table_name='customers';` | NULL rules enforced                     | NOT NULL constraint missing                   | NA        | P1       | **FAILED** |
| TC008 | Check keys (PK/FK)           | `SELECT column_name, column_key FROM information_schema.columns WHERE table_name='customers';`  | Keys defined                            | Foreign key missing in schema                 | NA        | P1       | **FAILED** |


## Database Testing – Data Integrity & Constraints

| TC ID | Title / Description      | Steps / SQL Query                                                                     | Expected Result    | Actual Result                         | Test Data      | Priority | Status     |
| ----- | ------------------------ | ------------------------------------------------------------------------------------- | ------------------ | ------------------------------------- | -------------- | -------- | ---------- |
| TC009 | Primary key uniqueness   | `SELECT customer_id, COUNT(*) FROM customers GROUP BY customer_id HAVING COUNT(*)>1;` | No duplicates      | No duplicate records found            | NA             | P1       | PASSED     |
| TC010 | NOT NULL enforcement     | Insert NULL into mandatory column                                                     | Insert should fail | Insert blocked by NOT NULL constraint | NULL           | P1       | PASSED     |
| TC011 | Foreign key integrity    | Insert invalid FK value                                                               | Insert should fail | FK constraint prevents insertion      | Invalid FK     | P1       | PASSED     |
| TC012 | Default values           | Insert without optional columns                                                       | Defaults applied   | Default values populated              | NA             | P2       | PASSED     |
| TC013 | Numeric range validation | Insert out-of-range value                                                             | Insert should fail | Validation works as expected          | Boundary value | P2       | PASSED     |
| TC014 | String length validation | Insert oversized string                                                               | Insert should fail | Length constraint enforced            | Long string    | P2       | PASSED     |
| TC015 | Auto-increment check     | Insert multiple records                                                               | Sequential IDs     | Auto-increment works correctly        | NA             | P2       | PASSED     |
| TC016 | Orphan record check      | `SELECT * FROM orders WHERE customer_id NOT IN (SELECT customer_id FROM customers);`  | No orphan records  | Orphan records found                  | NA             | P1       | **FAILED** |

## Database Testing – Relationship & Performance Validation

| TC ID | Title / Description    | Steps / SQL Query                                      | Expected Result       | Actual Result                 | Test Data    | Priority | Status     |
| ----- | ---------------------- | ------------------------------------------------------ | --------------------- | ----------------------------- | ------------ | -------- | ---------- |
| TC017 | Cascading delete       | Delete parent record                                   | Child records handled | Cascading delete not enforced | NA           | P1       | **FAILED** |
| TC018 | Cascading update       | Update parent PK                                       | Child records updated | Cascading update works        | NA           | P1       | PASSED     |
| TC019 | Date format validation | Insert invalid date                                    | Insert should fail    | Invalid date accepted         | Invalid date | P2       | **FAILED** |
| TC020 | Unique constraint      | Insert duplicate value                                 | Insert should fail    | Duplicate value rejected      | Duplicate    | P1       | PASSED     |
| TC021 | Nullable column insert | Insert NULL into nullable column                       | Insert should succeed | NULL inserted successfully    | NULL         | P3       | PASSED     |
| TC022 | ENUM validation        | Insert invalid ENUM                                    | Insert should fail    | Invalid ENUM value accepted   | Invalid ENUM | P2       | **FAILED** |
| TC023 | Index existence        | `SHOW INDEX FROM customers;`                           | Index exists          | Required index missing        | NA           | P2       | **FAILED** |
| TC024 | Index usage            | `EXPLAIN SELECT * FROM customers WHERE customer_id=1;` | Index used            | Index used in execution plan  | NA           | P3       | PASSED     |

## Final Execution Summary
| Metric                    | Count |
| ------------------------- | ----- |
| Total Test Cases Executed | 25    |
| Passed                    | 17    |
| Failed                    | 8     |
| Blocked                   | 0     |


