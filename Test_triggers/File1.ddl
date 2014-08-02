DROP SEQUENCE TEST_agreement_seq ; 
create sequence TEST_agreement_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER TEST_agreement_PK_trig 
; 

create or replace trigger TEST_agreement_PK_trig 
before insert on TEST_agreement
for each row 
begin 
select TEST_agreement_seq.nextval into :new.agreement_id from dual; 
end; 
/

DROP SEQUENCE TEST_department_seq ; 
create sequence TEST_department_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER TEST_department_PK_trig 
; 

create or replace trigger TEST_department_PK_trig 
before insert on TEST_department
for each row 
begin 
select TEST_department_seq.nextval into :new.department_id from dual; 
end; 
/

DROP SEQUENCE TEST_vendor_seq ; 
create sequence TEST_vendor_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER TEST_vendor_PK_trig 
; 

create or replace trigger TEST_vendor_PK_trig 
before insert on TEST_vendor
for each row 
begin 
select TEST_vendor_seq.nextval into :new.vendor_id from dual; 
end; 
/

DROP INDEX TEST_department_id_FK_0 ;
CREATE INDEX TEST_department_id_FK_0 ON TEST_agreement(TEST_department_id) ;
DROP INDEX TEST_vendor_id_FK_1 ;
CREATE INDEX TEST_vendor_id_FK_1 ON TEST_agreement(TEST_vendor_id) ;
