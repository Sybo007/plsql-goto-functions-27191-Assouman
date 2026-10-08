DECLARE
    v_salary employees.salary%TYPE;
    v_name   employees.emp_name%TYPE;
BEGIN
    -- Get employee name and salary by ID
    SELECT emp_name, salary INTO v_name, v_salary
    FROM employees
    WHERE emp_id = &emp_id;

    -- Decide if salary is below or above threshold
    IF v_salary < 1000 THEN
        GOTO low_salary;
    ELSE
        GOTO high_salary;
    END IF;

    <<low_salary>>
    DBMS_OUTPUT.PUT_LINE('Employee: ' || v_name);
    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary);
    DBMS_OUTPUT.PUT_LINE('Employee salary is below threshold');
    RETURN;

    <<high_salary>>
    DBMS_OUTPUT.PUT_LINE('Employee: ' || v_name);
    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary);
    DBMS_OUTPUT.PUT_LINE('Employee salary is acceptable');
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee not found');
END;
/
