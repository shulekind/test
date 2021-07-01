-- #2 Отчёт по статусам
-- Вывести количество контрактов для каждого значения статуса контракта из списка: A - активен, B - заблокирован, C - расторгнут. 
-- Результат: статус, «словесное» наименование статуса, количество контрактов.

SELECT
    case 
        when v_status = 'A' then 'Active'
        when v_status = 'B' then 'Blocked'
        when v_status = 'C' then 'Terminated'
    end status,
    cnt
FROM (
   SELECT c.v_status, count(*) cnt
   FROM contracts c
   GROUP BY c.v_status
);
