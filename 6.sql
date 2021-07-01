-- #6 Курсор
-- Напишите курсор CUR, который для выборки строк из SERVICES 
-- по условиям ID_SERVICE  не равно 1234 и ID_TARIFF_PLAN равно 567, 
-- будет производить изменение поля DT_STOP в начало текущего дня.
DECLARE 
  CURSOR cur
  IS
    SELECT *
    FROM services
    WHERE id_service <> 1234 AND id_tariff_plan = 567
    FOR UPDATE OF dt_stop;
BEGIN
  FOR c IN cur
  LOOP
    UPDATE services
    SET
      dt_stop = c.dt_stop - 1
    WHERE CURRENT OF cur;
  END LOOP;
  COMMIT;
END;
