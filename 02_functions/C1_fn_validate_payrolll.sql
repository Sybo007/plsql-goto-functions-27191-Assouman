CREATE OR REPLACE FUNCTION fn_validate_payroll(p_emp_id NUMBER)
RETURN VARCHAR2 IS
    v_name        employees.emp_name%TYPE;
    v_salary      employees.salary%TYPE;
    v_hire_date   employees.hire_date%TYPE;
    v_dept_id     employees.dept_id%TYPE;
    v_annual      NUMBER;
    v_years       NUMBER;
    v_tax         NUMBER;
    v_dept_name   VARCHAR2(50);
    v_message     VARCHAR2(200);
BEGIN
    -- Get employee details
    SELECT emp_name, salary, hire_date, dept_id
    INTO v_name, v_salary, v_hire_date, v_dept_id
    FROM employees
    WHERE emp_id = p_emp_id;

    -- Apply functions
    v_annual    := fn_annual_salary(v_salary);
    v_years     := fn_years_service(v_hire_date);
    v_tax       := fn_tax(v_salary);
    v_dept_name := fn_dept_name(v_dept_id);

    -- Build validation message
    v_message := 'Payroll validated for ' || v_name ||
                 ' | Dept: ' || v_dept_name ||
                 ' | Salary: ' || v_salary ||
                 ' | Annual: ' || v_annual ||
                 ' | Years: ' || v_years ||
                 ' | Tax: ' || v_tax;

    RETURN v_message;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'Employee not found';
END;
/
