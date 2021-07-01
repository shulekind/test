-- #5 Услуги
-- Напишите процедуру для извлечения данных из таблицы SERVICE, так, чтобы на вход 
-- она могла принимать ID услуги (переменная pID). Обратить внимание на то, что 
-- она может быть null – в этом случае нужно выводить все записи. На выход 
-- процедура должна возвращать курсор (переменная dwr) в виде полей 
-- ID_SERVICE, V_NAME, CNT (количестов таких услуг у абонентов) с сортировкой 
-- по V_NAME.
CREATE OR REPLACE Procedure find_services
    (pID IN services.id_service%TYPE,
    dwr  OUT SYS_REFCURSOR)
IS
  v_str VARCHAR2(4000 CHAR);
BEGIN
  IF pID IS NOT NULL THEN
    v_str := 'SELECT s.id_service, s.v_name, count(*) cnt
      FROM services ss
      JOIN service s on ss.id_service = s.id_service
      WHERE s.id_service = ' || pID ||
      ' GROUP BY s.id_service, s.v_name
      ORDER BY s.v_name ASC';
  ELSE
    v_str := 'SELECT s.id_service, s.v_name, count(*) cnt
      FROM services ss
      JOIN service s on ss.id_service = s.id_service
      GROUP BY s.id_service, s.v_name
      ORDER BY s.v_name ASC';
  END IF;
 
  OPEN dwr FOR v_str; 
END;
