-- Correct way: label must be outside the IF block
DECLARE
    v_salary NUMBER := 500;
BEGIN
    IF v_salary < 1000 THEN
        GOTO valid_label;
    END IF;

    <<valid_label>>
    DBMS_OUTPUT.PUT_LINE('Valid jump outside block');
END;
/
