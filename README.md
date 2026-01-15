
#  Database Testing Project 

##  Overview

This repository contains a **complete end-to-end Database Testing project** focused on validating **database schema, data integrity, constraints, relationships, and performance**.
The project demonstrates **real-world manual QA practices** used in production-level applications.

All testing was performed using **SQL queries** executed directly on the database to ensure data accuracy, consistency, and reliability.

---

##  Objectives

* Validate database schema against approved design
* Ensure correct implementation of constraints (PK, FK, NOT NULL, UNIQUE, DEFAULT)
* Verify data integrity and referential integrity
* Identify orphan records and invalid data scenarios
* Validate indexing and query performance
* Log and document defects professionally

---

##  Scope of Testing

###  In Scope

* Table schema validation
* Column name, type, size, and nullability checks
* Primary & foreign key validation
* Data integrity and constraint enforcement
* Cascading delete & update validation
* ENUM / SET value validation
* Index existence and usage validation
* Positive, negative, and boundary testing

###  Out of Scope

* UI testing
* API testing
* Load and stress testing
* Backup and recovery testing
* Infrastructure security testing

---

##  Tools & Technologies Used

* **Database:** MySQL
* **Query Tool:** MySQL Workbench 8.0 CE
* **Testing Type:** Manual Database Testing
* **Documentation:** Markdown (GitHub)

---
## Project Structure

database-Testing-Schema-Data-Integrity-Index-Validation/

├── Documentation/

│     ├── Test_Plan.md

│     ├── Test_Case.md

│     ├── TestCaseExecution.md

│     └── Bug_Reports.md

├── README.md

├── mySQL_EverShopDatabaseScript.sql

└── mysqlEverShopdatabase.sql


##  Test Artifacts Included

###  Test Plan

* Scope, objectives, approach, risks, and schedule
* Entry and exit criteria
* Roles and responsibilities

###  Test Cases

* **24 database test cases**
* Schema, data integrity, relationship, and performance validation
* SQL-based execution steps

###  Test Execution Report

* Execution status for each test case
* Actual vs expected results
* Execution summary

###  Bug Reports

* **8 professionally documented defects**
* Severity & priority classification
* Reproducible SQL steps
* Clear impact analysis

---

##  Test Execution Summary

| Metric           | Count |
| ---------------- | ----- |
| Total Test Cases | 25    |
| Passed           | 17    |
| Failed           | 8     |
| Blocked          | 0     |

---

##  Defect Summary

| Severity   | Count |
| ---------- | ----- |
| Critical   | 2     |
| High       | 4     |
| Medium     | 2     |
| Total Bugs | 8     |

