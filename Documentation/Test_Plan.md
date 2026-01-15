
# **Test Plan for Database Testing (Schema, Integrity, Relationships & Performance)**

---

## **1. Introduction**

This document outlines the **Test Plan for Database Testing** of the application.
The purpose of this testing is to validate the **database schema, data integrity, constraints, relationships, and performance aspects** by executing defined SQL-based test cases.

This testing ensures that the database structure is correctly implemented as per the approved design and that data is stored, retrieved, and maintained accurately, securely, and consistently.

---

## **2. Objective**

The objectives of Database Testing are to:

* Verify that all required database tables are present and follow naming conventions.
* Validate table schema including column names, data types, sizes, keys, and constraints.
* Ensure data integrity through enforcement of **Primary Key, Foreign Key, NOT NULL, UNIQUE, and DEFAULT constraints**.
* Validate referential integrity and cascading behaviors between related tables.
* Ensure indexes exist and are properly used for optimized query performance.
* Identify schema-level and data-level defects early to prevent production issues.

---

## **3. Scope of Testing**

### **In-Scope**

* Database Schema Validation
* Data Integrity & Constraint Validation
* Referential Integrity Testing
* Cascading Delete and Update Validation
* Index Validation and Query Performance Checks
* Positive and Negative Database Scenarios
* Boundary Value Validation for Numeric and String Columns

### **Out-of-Scope**

* Backend API testing
* Application UI testing
* Load and stress testing on database
* Security penetration testing at infrastructure level
* Backup and recovery testing

---

## **4. Test Items**

The following database components are covered under this test plan:

* **Tables** (e.g., `customers`, `orders`)
* **Columns** (name, type, size, nullability)
* **Constraints**

  * Primary Key
  * Foreign Key
  * NOT NULL
  * UNIQUE
  * DEFAULT
* **Indexes**
* **Relationships between parent and child tables**
* **Auto-increment fields**
* **ENUM / SET columns**
* **Date and numeric fields**

---

## **5. Test Approach**

The following testing approaches will be used:

* **Manual Database Testing**

  * Execution of SQL queries directly in the database
* **Positive Testing**

  * Validate expected behavior using valid data
* **Negative Testing**

  * Insert invalid data to verify constraint enforcement
* **Boundary Value Testing**

  * Validate min/max limits for numeric and string columns
* **Schema Validation**

  * Compare actual schema with approved database design
* **Performance Validation**

  * Verify index existence and usage via execution plans

---

## **6. Test Deliverables**

* **Database Test Cases Document** (TC001 – TC024)
* **Test Execution Report**
* **Defect / Bug Report**
* **Failed Test Case Summary**
* **Final Test Summary Report**

---

## **7. Entry and Exit Criteria**

### **Entry Criteria**

* Database environment is available and accessible
* Required schemas and tables are deployed
* Database design documentation is approved
* Test cases are reviewed and finalized

### **Exit Criteria**

* All planned test cases executed
* All **P1 (Critical)** test cases completed
* All identified defects logged and reviewed
* Test execution summary prepared and approved

---

## **8. Test Schedule**

| Task                      | Owner   | Start Date | End Date   |
| ------------------------- | ------- | ---------- | ---------- |
| Test Case Review          | QA Team | 2025-10-16 | 2025-10-17 |
| Test Execution            | QA Team | 2025-10-18 | 2025-10-20 |
| Defect Logging & Tracking | QA Team | 2025-10-18 | 2025-10-21 |
| Test Summary Report       | QA Team | 2025-10-21 | 2025-10-22 |

---

## **9. Roles and Responsibilities**

| Role               | Responsibility                             |
| ------------------ | ------------------------------------------ |
| Test Manager       | Define scope and approve test plan         |
| QA Engineer        | Execute SQL test cases and log defects     |
| Database Developer | Fix schema and data issues                 |
| Business Analyst   | Validate test results against requirements |

---

## **10. Risks and Mitigation**

| Risk                           | Mitigation                         |
| ------------------------------ | ---------------------------------- |
| Incorrect database design      | Cross-verify with design documents |
| Missing constraints or indexes | Early schema validation            |
| Data inconsistency             | Run integrity checks frequently    |
| Environment issues             | Coordinate with DevOps team        |

---

## **11. Defect Management**

* All defects will be logged in a **Defect Tracking Tool**
* Defects will be categorized based on severity and priority:

**Severity Levels**

* Critical – Blocks data integrity or system usage
* High – Major functionality affected
* Medium – Partial impact
* Low – Minor issues or improvements

---

## **12. Test Environment**

* **Database**: MySQL
* **Environment**: Test 
* **Access Tool**: MySQL Workbench 
* **Operating System**: Windows 
* **Test Data**: Dummy and boundary test data
* **Schema**: Latest deployed schema

---

## **13. Conclusion**

This Test Plan ensures comprehensive validation of the **database layer** by covering schema structure, data integrity, relationships, and performance-related aspects.
Executing this plan helps identify critical database defects early, ensuring a **stable, reliable, and production-ready database system**.

---

