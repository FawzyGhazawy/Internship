CREATE OR REPLACE PROCEDURE ConvertIPToNumber(p_ip_address IN VARCHAR2, p_result OUT NUMBER) IS
BEGIN
    
    p_result := TO_NUMBER(REPLACE(p_ip_address, '.', ''));
END ConvertIPToNumber;
/
DECLARE
    v_result NUMBER;
BEGIN
    ConvertIPToNumber('10.1.255.34', v_result);
    DBMS_OUTPUT.PUT_LINE('Converted IP to number: ' || v_result);
END;
/
