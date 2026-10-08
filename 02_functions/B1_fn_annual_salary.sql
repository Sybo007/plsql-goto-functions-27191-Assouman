CREATE OR REPLACE FUNCTION fn_annual_salary(p_monthly NUMBER)
RETURN NUMBER IS
BEGIN
    RETURN p_monthly * 12;
END;
/
