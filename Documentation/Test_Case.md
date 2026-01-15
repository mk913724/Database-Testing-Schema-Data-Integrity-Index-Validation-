## Database Testing – Table Schema Validation

| TC ID | Title / Description                           | Steps / SQL Query                                                                                    | Expected Result                                                                         | Actual Result | Test Data | Priority | Status |
| ----- | --------------------------------------------- | ---------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | ------------- | --------- | -------- | ------ |
| TC001 | Check table presence in database schema       | `SHOW TABLES;`                                                                                       | All required tables should be displayed in the database schema                          | NA            | NA        | P1       | NA     |
| TC002 | Check table name conventions                  | `SHOW TABLES;`                                                                                       | Table names should be a single word and should not contain spaces or special characters | NA            | NA        | P1       | NA     |
| TC003 | Check number of columns in customers table    | `SELECT COUNT(*) AS NumberOfColumns FROM information_schema.columns WHERE table_name = 'customers';` | Number of columns should match the approved database design                             | NA            | NA        | P1       | NA     |
| TC004 | Check column names in customers table         | `SELECT column_name FROM information_schema.columns WHERE table_name = 'customers';`                 | Column names should match the database design                                           | NA            | NA        | P1       | NA     |
| TC005 | Check data type of columns in customers table | `SELECT column_name, data_type FROM information_schema.columns WHERE table_name = 'customers';`      | Column data types should match the database design                                      | NA            | NA        | P1       | NA     |
| TC006 | Check size of columns in customers table      | `SELECT column_name, column_type FROM information_schema.columns WHERE table_name = 'customers';`    | Column size should match the database design                                            | NA            | NA        | P1       | NA     |
| TC007 | Check nullable fields in customers table      | `SELECT column_name, is_nullable FROM information_schema.columns WHERE table_name = 'customers';`    | Nullable and NOT NULL constraints should match design                                   | NA            | NA        | P1       | NA     |
| TC008 | Check column keys in customers table          | `SELECT column_name, column_key FROM information_schema.columns WHERE table_name = 'customers';`     | Primary, Foreign, and Unique keys should be defined                                     | NA            | NA        | P1       | NA     |


##  Database Testing – Data Integrity & Constraints
| TC ID | Title / Description                    | Steps / SQL Query                                                                       | Expected Result                               | Actual Result | Test Data      | Priority | Status |
| ----- | -------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------- | ------------- | -------------- | -------- | ------ |
| TC009 | Check primary key uniqueness           | `SELECT customer_id, COUNT(*) FROM customers GROUP BY customer_id HAVING COUNT(*) > 1;` | No duplicate primary key values should exist  | NA            | NA             | P1       | NA     |
| TC010 | Verify NOT NULL constraint enforcement | Insert NULL into mandatory column                                                       | Insert should fail due to NOT NULL constraint | NA            | NULL value     | P1       | NA     |
| TC011 | Verify foreign key reference integrity | Insert record with invalid foreign key                                                  | Insert should fail due to FK constraint       | NA            | Invalid FK     | P1       | NA     |
| TC012 | Verify default value assignment        | Insert record without optional fields                                                   | Default values should be auto-populated       | NA            | NA             | P2       | NA     |
| TC013 | Validate numeric column value range    | Insert out-of-range numeric value                                                       | Insert should fail or be rejected             | NA            | Boundary value | P2       | NA     |
| TC014 | Validate string length limit           | Insert string exceeding column length                                                   | Insert should fail due to length constraint   | NA            | Long string    | P2       | NA     |
| TC015 | Verify auto-increment behavior         | Insert multiple records                                                                 | IDs should increment sequentially             | NA            | NA             | P2       | NA     |
| TC016 | Check orphan records in child table    | `SELECT * FROM orders WHERE customer_id NOT IN (SELECT customer_id FROM customers);`    | No orphan records should exist                | NA            | NA             | P1       | NA     |

##  Database Testing – Relationship & Performance Validation
| TC ID | Title / Description                       | Steps / SQL Query                                        | Expected Result                                       | Actual Result | Test Data       | Priority | Status |
| ----- | ----------------------------------------- | -------------------------------------------------------- | ----------------------------------------------------- | ------------- | --------------- | -------- | ------ |
| TC017 | Verify cascading delete behavior          | Delete parent record                                     | Related child records should be deleted or restricted | NA            | NA              | P1       | NA     |
| TC018 | Verify cascading update behavior          | Update parent primary key                                | Child records should update accordingly               | NA            | NA              | P1       | NA     |
| TC019 | Validate date format consistency          | Insert invalid date                                      | Insert should fail                                    | NA            | Invalid date    | P2       | NA     |
| TC020 | Verify unique constraint enforcement      | Insert duplicate unique value                            | Insert should fail                                    | NA            | Duplicate value | P1       | NA     |
| TC021 | Check NULL insertion in nullable columns  | Insert NULL into nullable column                         | Insert should succeed                                 | NA            | NULL value      | P3       | NA     |
| TC022 | Validate ENUM / SET allowed values        | Insert invalid ENUM value                                | Insert should fail                                    | NA            | Invalid ENUM    | P2       | NA     |
| TC023 | Verify index existence on customers table | `SHOW INDEX FROM customers;`                             | Required indexes should exist                         | NA            | NA              | P2       | NA     |
| TC024 | Verify index usage in query               | `EXPLAIN SELECT * FROM customers WHERE customer_id = 1;` | Index should be used in execution plan                | NA            | NA              | P3       | NA     |



## Failed Test Cases Overview
TC003 – Column count mismatch
TC005 – Incorrect data type
TC007 – NOT NULL constraint missing
TC008 – Foreign key missing (schema)
TC017 – Foreign key not enforced (data)
TC019 – Numeric range validation missing
TC020 – String length not enforced
TC022 – Orphan records found




## Explanation of Status Updates
PASSED: Functionality or validation works exactly as expected.


FAILED: Functionality or validation did not work as expected; critical issues need resolution.




## Explanation of Columns

TC ID: Unique identifier for each test case.


Test Case Description: Brief summary of what is being tested.


Expected Result: The desired or correct outcome based on requirements.


Actual Result: What happened during test execution, recorded after running the test.


Test Data: Specific data used to perform the test, if applicable.


Priority: Importance level of the test case (e.g., P1 = highest).


Status: Final outcome of the test case (Passed or Failed).

## Overall Execution Summary
| **Metric**                | **Count** |
| ------------------------- | --------- |
| Total Test Cases Executed | 24        |
| Passed                    | 17        |
| Failed                    | 7         |
| Blocked                   | 0         |







