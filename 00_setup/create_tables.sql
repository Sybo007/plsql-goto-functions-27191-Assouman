-- Create Departments table
CREATE TABLE departments (
    dept_id NUMBER PRIMARY KEY,
    dept_name VARCHAR2(50)
);

-- Create Employees table
CREATE TABLE employees (
    emp_id NUMBER PRIMARY KEY,
    emp_name VARCHAR2(50),
    salary NUMBER,
    hire_date DATE,
    dept_id NUMBER REFERENCES departments(dept_id)
);

-- Insert sample departments
INSERT INTO departments VALUES (10, 'HR');
INSERT INTO departments VALUES (20, 'Finance');
INSERT INTO departments VALUES (30, 'IT');

-- Insert sample employees
INSERT INTO employees VALUES (1, 'Alice', 800, DATE '2015-06-01', 10);
INSERT INTO employees VALUES (2, 'Bob', 1200, DATE '2010-03-15', 20);
INSERT INTO employees VALUES (3, 'Charlie', 500, DATE '2020-01-10', 30);
INSERT INTO employees VALUES (4, 'Diana', 2000, DATE '2005-11-25', 20);

COMMIT;
