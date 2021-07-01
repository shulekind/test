INSERT INTO departments
VALUES (1, 'South');

INSERT INTO departments
VALUES (2, 'North');

INSERT INTO departments
VALUES (3, 'West');

INSERT INTO departments
VALUES (4, 'East');

INSERT INTO departments
VALUES (5, 'Center');

INSERT INTO departments
VALUES (6, 'Shadow');

--
INSERT INTO contracts
VALUES (1, 1, TO_DATE('2021/06/28', 'yyyy/mm/dd'), '1111', 'A');

INSERT INTO contracts
VALUES (2, 2, TO_DATE('2021/06/27', 'yyyy/mm/dd'), '2222', 'A');

INSERT INTO contracts
VALUES (3, 3, TO_DATE('2021/06/26', 'yyyy/mm/dd'), '3333', 'A');

INSERT INTO contracts
VALUES (4, 4, TO_DATE('2021/06/26', 'yyyy/mm/dd'), '4444', 'A');

INSERT INTO contracts
VALUES (5, 5, TO_DATE('2021/06/25', 'yyyy/mm/dd'), '5555', 'A');

INSERT INTO contracts
VALUES (6, 1, TO_DATE('2021/06/25', 'yyyy/mm/dd'), '1122', 'C');

INSERT INTO contracts
VALUES (7, 1, TO_DATE('2021/06/24', 'yyyy/mm/dd'), '0002', 'C');

INSERT INTO contracts
VALUES (8, 1, TO_DATE('2021/06/20', 'yyyy/mm/dd'), '0003', 'B');

--
INSERT INTO service
VALUES (1, 'Service 1');

INSERT INTO service
VALUES (2, 'Service 2');

INSERT INTO service
VALUES (3, 'Service 3');

INSERT INTO service
VALUES (4, 'Service 4');

INSERT INTO service
VALUES (5, 'Service 5');

INSERT INTO service
VALUES (6, 'Service 6');

INSERT INTO service
VALUES (7, 'Service 7');

INSERT INTO service
VALUES (8, 'Service 8');

INSERT INTO service
VALUES (9, 'Service 9');

INSERT INTO service
VALUES (10, 'Service 10');

--
INSERT INTO tariff_plan
VALUES (1, 'Tariff 1');

INSERT INTO tariff_plan
VALUES (2, 'Tariff 2');

INSERT INTO tariff_plan
VALUES (3, 'Tariff 3');

INSERT INTO tariff_plan
VALUES (4, 'Tariff 4');

INSERT INTO tariff_plan
VALUES (5, 'Tariff 5');

INSERT INTO tariff_plan
VALUES (6, 'Tariff 6');

INSERT INTO tariff_plan
VALUES (7, 'Tariff 7');

INSERT INTO tariff_plan
VALUES (8, 'Tariff 8');

INSERT INTO tariff_plan
VALUES (9, 'Tariff 9');

INSERT INTO tariff_plan
VALUES (10, 'Tariff 10');

--
INSERT INTO services
VALUES (1, 1, 1, 1, TO_DATE('2021/06/01', 'yyyy/mm/dd'), TO_DATE('2021/06/30', 'yyyy/mm/dd'));

INSERT INTO services
VALUES (2, 2, 1, 1, TO_DATE('2021/06/01', 'yyyy/mm/dd'), TO_DATE('2021/06/30', 'yyyy/mm/dd'));

INSERT INTO services
VALUES (3, 2, 1, 1, TO_DATE('2021/06/01', 'yyyy/mm/dd'), TO_DATE('2021/06/30', 'yyyy/mm/dd'));

INSERT INTO services
VALUES (4, 2, 1, 1, TO_DATE('2021/06/01', 'yyyy/mm/dd'), TO_DATE('2021/06/30', 'yyyy/mm/dd'));

INSERT INTO services
VALUES (5, 2, 2, 1, TO_DATE('2021/06/01', 'yyyy/mm/dd'), TO_DATE('2021/06/30', 'yyyy/mm/dd'));

INSERT INTO services
VALUES (6, 1, 2, 2, TO_DATE('2021/06/01', 'yyyy/mm/dd'), TO_DATE('2021/06/30', 'yyyy/mm/dd'));

INSERT INTO services
VALUES (7, 2, 3, 2, TO_DATE('2021/06/01', 'yyyy/mm/dd'), TO_DATE('2021/06/30', 'yyyy/mm/dd'));

INSERT INTO services
VALUES (8, 2, 3, 2, TO_DATE('2021/06/01', 'yyyy/mm/dd'), TO_DATE('2021/06/30', 'yyyy/mm/dd'));

INSERT INTO services
VALUES (9, 2, 4, 2, TO_DATE('2021/06/01', 'yyyy/mm/dd'), TO_DATE('2021/06/30', 'yyyy/mm/dd'));

INSERT INTO services
VALUES (10, 2, 4, 3, TO_DATE('2021/06/01', 'yyyy/mm/dd'), TO_DATE('2021/06/30', 'yyyy/mm/dd'));

INSERT INTO services
VALUES (11, 1, 4, 3, TO_DATE('2021/06/01', 'yyyy/mm/dd'), TO_DATE('2021/06/30', 'yyyy/mm/dd'));

INSERT INTO services
VALUES (12, 2, 4, 3, TO_DATE('2021/06/01', 'yyyy/mm/dd'), TO_DATE('2021/06/30', 'yyyy/mm/dd'));

INSERT INTO services
VALUES (13, 2, 5, 4, TO_DATE('2021/06/01', 'yyyy/mm/dd'), TO_DATE('2021/06/30', 'yyyy/mm/dd'));

INSERT INTO services
VALUES (14, 2, 5, 4, TO_DATE('2021/06/01', 'yyyy/mm/dd'), TO_DATE('2021/06/30', 'yyyy/mm/dd'));

INSERT INTO services
VALUES (15, 2, 5, 5, TO_DATE('2021/06/01', 'yyyy/mm/dd'), TO_DATE('2021/06/30', 'yyyy/mm/dd'));

INSERT INTO services
VALUES (16, 1, 5, 6, TO_DATE('2021/06/01', 'yyyy/mm/dd'), TO_DATE('2021/06/30', 'yyyy/mm/dd'));

INSERT INTO services
VALUES (17, 2, 5, 7, TO_DATE('2021/06/01', 'yyyy/mm/dd'), TO_DATE('2021/06/30', 'yyyy/mm/dd'));

INSERT INTO services
VALUES (18, 2, 6, 8, TO_DATE('2021/06/01', 'yyyy/mm/dd'), TO_DATE('2021/06/30', 'yyyy/mm/dd'));

INSERT INTO services
VALUES (19, 2, 7, 8, TO_DATE('2021/06/01', 'yyyy/mm/dd'), TO_DATE('2021/06/30', 'yyyy/mm/dd'));

INSERT INTO services
VALUES (20, 2, 8, 9, TO_DATE('2021/06/01', 'yyyy/mm/dd'), TO_DATE('2021/06/30', 'yyyy/mm/dd'));

INSERT INTO services
VALUES (21, 1, 9, 9, TO_DATE('2021/06/01', 'yyyy/mm/dd'), TO_DATE('2021/06/30', 'yyyy/mm/dd'));

INSERT INTO services
VALUES (22, 2, 10, 1, TO_DATE('2021/06/01', 'yyyy/mm/dd'), TO_DATE('2021/06/30', 'yyyy/mm/dd'));

INSERT INTO services
VALUES (23, 2, 10, 1, TO_DATE('2021/06/01', 'yyyy/mm/dd'), TO_DATE('2021/06/30', 'yyyy/mm/dd'));

INSERT INTO services
VALUES (24, 2, 10, 1, TO_DATE('2021/06/01', 'yyyy/mm/dd'), TO_DATE('2021/06/30', 'yyyy/mm/dd'));

INSERT INTO services
VALUES (25, 2, 10, 1, TO_DATE('2021/06/01', 'yyyy/mm/dd'), TO_DATE('2021/06/30', 'yyyy/mm/dd'));

INSERT INTO services
VALUES (26, 1, 10, 1, TO_DATE('2021/06/01', 'yyyy/mm/dd'), TO_DATE('2021/06/30', 'yyyy/mm/dd'));

INSERT INTO services
VALUES (27, 2, 10, 1, TO_DATE('2021/06/01', 'yyyy/mm/dd'), TO_DATE('2021/06/30', 'yyyy/mm/dd'));

INSERT INTO services
VALUES (28, 2, 10, 1, TO_DATE('2021/06/01', 'yyyy/mm/dd'), TO_DATE('2021/06/30', 'yyyy/mm/dd'));

INSERT INTO services
VALUES (29, 2, 10, 1, TO_DATE('2021/06/01', 'yyyy/mm/dd'), TO_DATE('2021/06/30', 'yyyy/mm/dd'));

INSERT INTO services
VALUES (30, 2, 10, 1, TO_DATE('2021/06/01', 'yyyy/mm/dd'), TO_DATE('2021/06/30', 'yyyy/mm/dd'));

INSERT INTO service
VALUES (1233, 'Service 1233');

INSERT INTO tariff_plan
VALUES (567, 'Tariff 567');

INSERT INTO services
VALUES (31, 2, 567, 1233, TO_DATE('2021/06/01', 'yyyy/mm/dd'), TO_DATE('2021/06/30', 'yyyy/mm/dd'));