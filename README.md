# Assignment 2 – PL/SQL GOTO & Functions

**Name:** Assouman Sibomana  
**Student ID:** 27191  
**DBMS Used:** Oracle SQL Developer  

---

## 📌 Summary
I created a database with `departments` and `employees` tables.  
I inserted sample data (3 departments, 4 employees with varied salaries and hire dates).  
I wrote PL/SQL programs using **GOTO statements** and **functions** to classify salaries, calculate annual salary, years of service, tax, and validate payroll.  
I tested each program with sample employees and captured outputs in SQL Developer.

---

## ▶️ How to Run
1. Open Oracle SQL Developer.  
2. Run `00_setup/create_tables.sql` to create tables and insert sample data.  
3. Run scripts in `01_goto/` to test GOTO programs.  
4. Compile functions in `02_functions/`.  
5. Run test scripts in `03_tests/` to verify outputs.  
6. View results in the **DBMS Output panel** (enable via *View → DBMS Output*).  

---

## 🛒 Business Scenario
The company wants to validate payroll entries and ensure salaries, taxes, and department assignments are correct.  
Management requires insights into:  
- Which employees earn below or above thresholds  
- Annual salary and years of service  
- Tax obligations based on salary  
- Department assignment consistency  

---

## 🔗 Programs & Functions

### Part A – GOTO Programs
- **A1 Number Classifier**: Classifies salary as negative, zero, or positive.  
- **A2 Salary Review**: Reviews salary against threshold (1000).  
- **A3 Illegal GOTO**: Demonstrates invalid jump and corrected version.  
- **A4 Rewrite Without GOTO**: Salary review using IF/ELSE.  

### Part B – Functions
- **Annual Salary**: Calculates annual salary.  
- **Years of Service**: Calculates years since hire date.  
- **Tax**: Calculates tax (10% if salary < 1000, else 20%).  
- **Department Name**: Returns department name by ID.  
- **Functions in SELECT**: Demonstrates all functions together.  

### Part C – Payroll Validator
- Integrates all functions into one validation message.  
- Handles invalid employee IDs gracefully.  

---

## 📊 Business Interpretation
- Salary review highlights employees below threshold.  
- Annual salary and years of service show long‑term value.  
- Tax function demonstrates payroll obligations.  
- Payroll Validator integrates all checks into one professional workflow.  

---

## ⚡ Challenges & Resolutions
- **Challenge:** No data found when querying invalid IDs.  
  **Resolution:** Added exception handling (`WHEN NO_DATA_FOUND`).  
- **Challenge:** DBMS Output not showing results.  
  **Resolution:** Enabled DBMS Output panel in SQL Developer.  
- **Challenge:** GOTO jumps into IF blocks caused errors.  
  **Resolution:** Moved labels outside IF blocks.  
- **Challenge:** Needed modular design for payroll validation.  
  **Resolution:** Built reusable functions and combined them.  
