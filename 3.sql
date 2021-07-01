-- #3 "Пустые" филиалы
-- Вывести наименования филиалов, в которых нет ни одного активного контракта.
SELECT v_name
FROM departments
WHERE id_department NOT IN ( 
    SELECT distinct(id_department)
    FROM contracts
    WHERE v_status = 'A'
);
