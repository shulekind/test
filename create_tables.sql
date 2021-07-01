CREATE TABLE departments (
  id_department NUMBER(10) NOT NULL,
  v_name VARCHAR2(50) NOT NULL,
  CONSTRAINT departments_pk PRIMARY KEY (id_department)
);
COMMENT ON TABLE departments IS 'Филиалы/Департаменты';
COMMENT ON COLUMN departments.id_department IS 'Код филиала';
COMMENT ON COLUMN departments.v_name IS 'Наименование филиала';

CREATE TABLE contracts (
  id_contract_inst NUMBER(10) NOT NULL,
  id_department NUMBER(10) NOT NULL,
  dt_reg DATE NOT NULL,
  v_ext_ident VARCHAR2(10) NOT NULL,
  v_status VARCHAR2(1) NOT NULL,
  CONSTRAINT contracts_pk PRIMARY KEY (id_contract_inst),
  CONSTRAINT fk_contracts_departments
    FOREIGN KEY (id_department)
    REFERENCES departments(id_department)
);
COMMENT ON TABLE contracts IS 'Контракты';
COMMENT ON COLUMN contracts.id_contract_inst IS 'Код контракта';
COMMENT ON COLUMN contracts.dt_reg IS 'Дата регистрации';
COMMENT ON COLUMN contracts.v_ext_ident IS 'Номер контракта';

CREATE TABLE bills (
  id_bill NUMBER(10) NOT NULL,
  id_contract_inst NUMBER(10) NOT NULL,
  f_sum DECIMAL(9,2) NOT NULL,
  dt_event DATE NOT NULL, 
  id_manager NUMBER(10) NOT NULL,
  CONSTRAINT bills_pk PRIMARY KEY (id_bill),
  CONSTRAINT fk_bills_contracts
    FOREIGN KEY (id_contract_inst)
    REFERENCES contracts(id_contract_inst)
);
COMMENT ON TABLE bills IS 'Счета';
COMMENT ON COLUMN bills.id_contract_inst IS 'Код контракта';
COMMENT ON COLUMN bills.f_sum IS 'Сумма счета';
COMMENT ON COLUMN bills.dt_event IS 'Дата выставления счета';
COMMENT ON COLUMN bills.id_manager IS 'Код пользователя выставившего счет';

CREATE TABLE service (
  id_service number(10) NOT NULL,
  v_name varchar2(50) NOT NULL,
  CONSTRAINT service_pk PRIMARY KEY (id_service)
);
COMMENT ON TABLE service IS 'Типы услуг';
COMMENT ON COLUMN service.id_service IS 'Код типа услуги';
COMMENT ON COLUMN service.v_name IS 'Наименование типа';

CREATE TABLE tariff_plan (
  id_tariff_plan number(10) NOT NULL,
  v_name varchar2(50) NOT NULL,
  CONSTRAINT tariff_plan_pk PRIMARY KEY (id_tariff_plan)
);
COMMENT ON TABLE service IS 'Тарифные планы';
COMMENT ON COLUMN service.id_service IS 'Код тарифного плана';
COMMENT ON COLUMN service.v_name IS 'Наименование тарифного плана';

CREATE TABLE services (
  id_service_inst NUMBER(10) NOT NULL,
  id_contract_inst NUMBER(10) NOT NULL,
  id_tariff_plan NUMBER(10) NOT NULL,
  id_service NUMBER(10) NOT NULL,
  dt_start DATE NOT NULL,
  dt_stop DATE NOT NULL,
  CONSTRAINT services_pk PRIMARY KEY (id_service_inst),
  CONSTRAINT fk_services_contracts
    FOREIGN KEY (id_contract_inst)
    REFERENCES contracts(id_contract_inst),
  CONSTRAINT fk_services_tariff_plan
    FOREIGN KEY (id_tariff_plan)
    REFERENCES tariff_plan(id_tariff_plan),
  CONSTRAINT fk_services_service
    FOREIGN KEY (id_service)
    REFERENCES service(id_service)
);
COMMENT ON TABLE services IS 'Услуги';
COMMENT ON COLUMN services.id_service_inst IS 'Код услуги';
COMMENT ON COLUMN services.id_contract_inst IS 'Код контракта';
COMMENT ON COLUMN services.id_tariff_plan IS 'Код тарифного плана';
COMMENT ON COLUMN services.id_service IS 'Код типа услуги';
COMMENT ON COLUMN services.dt_start IS 'Дата подключения услуги';
COMMENT ON COLUMN services.id_service IS 'Дата отключения услуги';