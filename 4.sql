-- #4 Счет
-- По контракту (v_ext_ident = ‘XXX’) после каждого события 
-- (оказанная услуга, платеж) выставляют счет, в котором в поле f_sum 
-- отображается сумма всех неоплаченных услуг на тот момент. 
-- Требуется вывести задолженность абонента на произвольную дату

SELECT f_sum
FROM (
    SELECT b.f_sum
    FROM contracts c
    JOIN bills b ON c.id_contract_inst = b.id_contract_inst
    WHERE c.v_ext_ident = 'XXX' AND b.dt_event < sysdate 
    ORDER BY b.dt_event DESC
) WHERE rownum = 1;
