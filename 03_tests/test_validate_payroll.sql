SET SERVEROUTPUT ON;

BEGIN
    DBMS_OUTPUT.PUT_LINE(fn_validate_payroll(1)); -- Alice
    DBMS_OUTPUT.PUT_LINE(fn_validate_payroll(2)); -- Bob
    DBMS_OUTPUT.PUT_LINE(fn_validate_payroll(3)); -- Charlie
    DBMS_OUTPUT.PUT_LINE(fn_validate_payroll(4)); -- Diana
    DBMS_OUTPUT.PUT_LINE(fn_validate_payroll(999)); -- Invalid ID
END;
/
