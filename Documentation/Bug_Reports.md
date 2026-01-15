
##  Bug Report – Database Testing

---

### **BUG-001**

**Related TC:** TC003
**Bug Title:** Column count mismatch in `customers` table

* **Module:** Database Schema
* **Environment:** Test | MySQL Workbench 8.0 CE
* **Severity:** High
* **Priority:** P1
* **Status:** Open

**Description:**
The number of columns in the `customers` table does not match the approved database design specification.

**Steps to Reproduce:**

1. Connect to the database using MySQL Workbench
2. Execute:

```sql
SELECT COUNT(*) 
FROM information_schema.columns 
WHERE table_name = 'customers';
```

**Expected Result:**
Column count should exactly match the database design document.

**Actual Result:**
Mismatch observed between actual and expected column count.

**Impact:**
Schema mismatch can cause application mapping failures and data issues.

---

### **BUG-002**

**Related TC:** TC005
**Bug Title:** Incorrect data type defined for one or more columns

* **Module:** Database Schema
* **Environment:** Test | MySQL
* **Severity:** High
* **Priority:** P1
* **Status:** Open

**Description:**
One or more columns in the `customers` table are defined with incorrect data types compared to the approved database design.

**Steps to Reproduce:**

```sql
SELECT column_name, data_type 
FROM information_schema.columns 
WHERE table_name = 'customers';
```

**Expected Result:**
All columns should use data types defined in the design document.

**Actual Result:**
Data type mismatches found.

**Impact:**
May result in data truncation, validation failures, or application errors.

---

### **BUG-003**

**Related TC:** TC007
**Bug Title:** NOT NULL constraint missing on mandatory column

* **Module:** Constraints
* **Environment:** Test | MySQL
* **Severity:** High
* **Priority:** P1
* **Status:** Open

**Description:**
Mandatory column allows NULL values due to missing NOT NULL constraint.

**Steps to Reproduce:**

```sql
INSERT INTO customers (mandatory_column) VALUES (NULL);
```

**Expected Result:**
Insert should fail due to NOT NULL constraint.

**Actual Result:**
Insert succeeds without error.

**Impact:**
Invalid or incomplete data may be stored in the database.

---

### **BUG-004**

**Related TC:** TC008
**Bug Title:** Foreign key constraint missing in database schema

* **Module:** Database Relationships
* **Environment:** Test | MySQL
* **Severity:** Critical
* **Priority:** P1
* **Status:** Open

**Description:**
Foreign key relationship is not defined between parent and child tables as per schema design.

**Steps to Reproduce:**

```sql
SELECT column_name, column_key 
FROM information_schema.columns 
WHERE table_name = 'orders';
```

**Expected Result:**
Foreign key constraint should be defined.

**Actual Result:**
No foreign key constraint found.

**Impact:**
Leads to orphan records and loss of referential integrity.

---

### **BUG-005**

**Related TC:** TC017
**Bug Title:** Foreign key constraint not enforced during data insertion

* **Module:** Data Integrity
* **Environment:** Test | MySQL
* **Severity:** Critical
* **Priority:** P1
* **Status:** Open

**Description:**
Records with invalid foreign key values can be inserted into child tables.

**Steps to Reproduce:**

```sql
INSERT INTO orders (customer_id) VALUES (999999);
```

**Expected Result:**
Insert should fail due to foreign key constraint violation.

**Actual Result:**
Insert succeeds.

**Impact:**
Breaks referential integrity and causes inconsistent data.

---

### **BUG-006**

**Related TC:** TC019
**Bug Title:** Date format validation not enforced

* **Module:** Data Validation
* **Environment:** Test | MySQL
* **Severity:** Medium
* **Priority:** P2
* **Status:** Open

**Description:**
Date columns accept invalid date formats.

**Steps to Reproduce:**

```sql
INSERT INTO customers (created_date) VALUES ('2024-99-99');
```

**Expected Result:**
Insert should fail due to invalid date format.

**Actual Result:**
Invalid date accepted.

**Impact:**
May cause reporting and data processing issues.

---

### **BUG-007**

**Related TC:** TC020
**Bug Title:** String length constraint not enforced

* **Module:** Data Validation
* **Environment:** Test | MySQL
* **Severity:** Medium
* **Priority:** P2
* **Status:** Open

**Description:**
Text column accepts values exceeding defined column length.

**Steps to Reproduce:**

```sql
INSERT INTO customers (name) VALUES ('VeryLongStringExceedingDefinedLimit');
```

**Expected Result:**
Insert should fail due to length constraint.

**Actual Result:**
Data inserted successfully.

**Impact:**
May result in data truncation and inconsistency.

---

### **BUG-008**

**Related TC:** TC023
**Bug Title:** Required index missing on customers table

* **Module:** Performance
* **Environment:** Test | MySQL
* **Severity:** High
* **Priority:** P2
* **Status:** Open

**Description:**
Required index is missing on a frequently queried column in the `customers` table.

**Steps to Reproduce:**

```sql
SHOW INDEX FROM customers;
```

**Expected Result:**
Index should exist as per performance guidelines.

**Actual Result:**
Index not found.

**Impact:**
Query performance degradation for large datasets.

---

##  Bug Summary

| Severity       | Count |
| -------------- | ----- |
| Critical       | 2     |
| High           | 4     |
| Medium         | 2     |
| **Total Bugs** | **8** |

