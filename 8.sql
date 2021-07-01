-- #8 Популярные услуги
-- Вывести наименования тарифных планов для 5 самых популярных услуг
SELECT distinct(tp.v_name)
FROM tariff_plan tp
INNER JOIN services ss1
ON tp.id_tariff_plan = ss1.id_tariff_plan
WHERE ss1.id_service IN (
    SELECT id_service -- топ 5 самых популярных услуг
    FROM (
        SELECT
          ss.id_service,
          count(*) cnt
        FROM services ss 
        GROUP BY ss.id_service
        ORDER by cnt DESC
    ) WHERE rownum <=5
);
