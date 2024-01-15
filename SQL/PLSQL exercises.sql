CREATE OR REPLACE FUNCTION countAInWord(p_word IN VARCHAR2) RETURN NUMBER IS
    v_count NUMBER;
BEGIN
    SELECT SUM(LENGTH(p_word) - LENGTH(REPLACE(UPPER(p_word), 'A', ''))) INTO v_count
    FROM DUAL;

    IF v_count = 0 THEN
        RETURN 'No A is found in that word';
    ELSE
        RETURN v_count;
    END IF;
END countAInWord;
/
DECLARE
    v_result NUMBER;
BEGIN
    v_result := countAInWord('example');
    DBMS_OUTPUT.PUT_LINE('Count of A in "example": ' || v_result);
    
    v_result := countAInWord('banana');
    DBMS_OUTPUT.PUT_LINE('Count of A in "banana": ' || v_result);
END;
/
