DECLARE
    v_salary employees.salary%TYPE;
    v_name   employees.emp_name%TYPE;
BEGIN
    -- Get employee name and salary by ID
    SELECT emp_name, salary INTO v_name, v_salary
    FROM employees
    WHERE emp_id = &emp_id;

    -- Classify the salary value
    IF v_salary < 0 THEN
        GOTO negative_label;
    ELSIF v_salary = 0 THEN
        GOTO zero_label;
    ELSE
        GOTO positive_label;
    END IF;

    <<negative_label>>
    DBMS_OUTPUT.PUT_LINE('Employee: ' || v_name);
    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary);
    DBMS_OUTPUT.PUT_LINE('Salary is negative');
    RETURN;

    <<zero_label>>
    DBMS_OUTPUT.PUT_LINE('Employee: ' || v_name);
    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary);
    DBMS_OUTPUT.PUT_LINE('Salary is zero');
    RETURN;

    <<positive_label>>
    DBMS_OUTPUT.PUT_LINE('Employee: ' || v_name);
    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary);
    DBMS_OUTPUT.PUT_LINE('Salary is positive');
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee not found');
END;
/
