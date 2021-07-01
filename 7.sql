-- #7 Уникальные услуги
-- Вывести наименования услуг, которые являются уникальными в рамках филиалов,
-- т.е. таких услуг, 
-- которые есть только в конкретном филиале и ни в каком другом.
SELECT res2.s_name
FROM (
    SELECT res1.s_name, count(*) cnt
    FROM (
        SELECT res.s_name, res.d_name, count(*)
        FROM (
            SELECT s.v_name s_name, d.v_name d_name
            FROM services ss
            JOIN contracts c
            ON ss.id_contract_inst = c.id_contract_inst
            JOIN departments d
            ON c.id_department = d.id_department
            JOIN service s
            ON ss.id_service = s.id_service
        ) res
        GROUP BY res.s_name, res.d_name
        ORDER BY res.s_name
    ) res1
    GROUP BY res1.s_name
    ORDER BY res1.s_name
) res2
WHERE res2.cnt = 1;
