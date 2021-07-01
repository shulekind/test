-- #1 Даты регистрации
-- Вывести количество контрактов, зарегистрированных в системе за каждый день за последние 5 дней 

SELECT dt_reg, count(*)
FROM contracts
WHERE dt_reg >= SYSDATE - 5 AND dt_reg < SYSDATE
GROUP BY dt_reg
ORDER BY dt_reg;
