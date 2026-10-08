SET SERVEROUTPUT ON;

BEGIN
    DBMS_OUTPUT.PUT_LINE('--- Testing Annual Salary ---');
    DBMS_OUTPUT.PUT_LINE('Alice Annual: ' || fn_annual_salary(800));
    DBMS_OUTPUT.PUT_LINE('Bob Annual: ' || fn_annual_salary(1200));

    DBMS_OUTPUT.PUT_LINE('--- Testing Years of Service ---');
    DBMS_OUTPUT.PUT_LINE('Alice Years: ' || fn_years_service(DATE '2015-06-01'));
    DBMS_OUTPUT.PUT_LINE('Bob Years: ' || fn_years_service(DATE '2010-03-15'));

    DBMS_OUTPUT.PUT_LINE('--- Testing Tax ---');
    DBMS_OUTPUT.PUT_LINE('Charlie Tax: ' || fn_tax(500));
    DBMS_OUTPUT.PUT_LINE('Diana Tax: ' || fn_tax(2000));

    DBMS_OUTPUT.PUT_LINE('--- Testing Department Name ---');
    DBMS_OUTPUT.PUT_LINE('Dept 10: ' || fn_dept_name(10));
    DBMS_OUTPUT.PUT_LINE('Dept 20: ' || fn_dept_name(20));
    DBMS_OUTPUT.PUT_LINE('Dept 30: ' || fn_dept_name(30));
    DBMS_OUTPUT.PUT_LINE('Dept 99: ' || fn_dept_name(99)); -- invalid dept
END;
/
