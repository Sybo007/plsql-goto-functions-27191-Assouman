CREATE OR REPLACE FUNCTION fn_tax(p_salary NUMBER)
RETURN NUMBER IS
BEGIN
    IF p_salary < 1000 THEN
        RETURN p_salary * 0.1; -- 10% tax
    ELSE
        RETURN p_salary * 0.2; -- 20% tax
    END IF;
END;
/