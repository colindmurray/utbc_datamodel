DROP SEQUENCE UTBC_agreements_seq ; 
create sequence UTBC_agreements_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER UTBC_agreements_PK_trig 
; 

create or replace trigger UTBC_agreements_PK_trig 
before insert on UTBC_agreements
for each row 
begin 
select UTBC_agreements_seq.nextval into :new.agreement_id from dual; 
end; 
/

DROP SEQUENCE UTBC_approvals_seq ; 
create sequence UTBC_approvals_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER UTBC_approvals_PK_trig 
; 

create or replace trigger UTBC_approvals_PK_trig 
before insert on UTBC_approvals
for each row 
begin 
select UTBC_approvals_seq.nextval into :new.approval_id from dual; 
end; 
/

DROP SEQUENCE UTBC_contact_seq ; 
create sequence UTBC_contact_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER UTBC_contact_PK_trig 
; 

create or replace trigger UTBC_contact_PK_trig 
before insert on UTBC_contact
for each row 
begin 
select UTBC_contact_seq.nextval into :new.contact_id from dual; 
end; 
/

DROP SEQUENCE UTBC_department_seq ; 
create sequence UTBC_department_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER UTBC_department_PK_trig 
; 

create or replace trigger UTBC_department_PK_trig 
before insert on UTBC_department
for each row 
begin 
select UTBC_department_seq.nextval into :new.department_id from dual; 
end; 
/

DROP SEQUENCE UTBC_document_seq ; 
create sequence UTBC_document_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER UTBC_document_PK_trig 
; 

create or replace trigger UTBC_document_PK_trig 
before insert on UTBC_document
for each row 
begin 
select UTBC_document_seq.nextval into :new.document_id from dual; 
end; 
/

DROP SEQUENCE UTBC_email_seq ; 
create sequence UTBC_email_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER UTBC_email_PK_trig 
; 

create or replace trigger UTBC_email_PK_trig 
before insert on UTBC_email
for each row 
begin 
select UTBC_email_seq.nextval into :new.email_id from dual; 
end; 
/

DROP SEQUENCE UTBC_former_name_seq ; 
create sequence UTBC_former_name_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER UTBC_former_name_PK_trig 
; 

create or replace trigger UTBC_former_name_PK_trig 
before insert on UTBC_former_name
for each row 
begin 
select UTBC_former_name_seq.nextval into :new.name_id from dual; 
end; 
/

DROP SEQUENCE UTBC_ticklers_seq ; 
create sequence UTBC_ticklers_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER UTBC_ticklers_PK_trig 
; 

create or replace trigger UTBC_ticklers_PK_trig 
before insert on UTBC_ticklers
for each row 
begin 
select UTBC_ticklers_seq.nextval into :new.tickler_id from dual; 
end; 
/

DROP SEQUENCE UTBC_vendor_seq ; 
create sequence UTBC_vendor_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER UTBC_vendor_PK_trig 
; 

create or replace trigger UTBC_vendor_PK_trig 
before insert on UTBC_vendor
for each row 
begin 
select UTBC_vendor_seq.nextval into :new.vendor_id from dual; 
end; 
/

DROP INDEX department_id_FK_0 ;
CREATE INDEX department_id_FK_0 ON UTBC_contact(department_id) ;
DROP INDEX approval_id_FK_1 ;
CREATE INDEX approval_id_FK_1 ON UTBC_ticklers(approval_id) ;
DROP INDEX agreement_id_FK_2 ;
CREATE INDEX agreement_id_FK_2 ON UTBC_email(agreement_id) ;
DROP INDEX vendor_id_FK_3 ;
CREATE INDEX vendor_id_FK_3 ON UTBC_former_name(vendor_id) ;
DROP INDEX department_id_FK_4 ;
CREATE INDEX department_id_FK_4 ON UTBC_former_name(department_id) ;
DROP INDEX receiver_id_FK_5 ;
CREATE INDEX receiver_id_FK_5 ON UTBC_email(receiver_id) ;
DROP INDEX programatic_approver_FK_6 ;
CREATE INDEX programatic_approver_FK_6 ON UTBC_department(programatic_approver) ;
DROP INDEX vendor_contact_id_FK_7 ;
CREATE INDEX vendor_contact_id_FK_7 ON UTBC_agreements(vendor_contact_id) ;
DROP INDEX approval_id_FK_8 ;
CREATE INDEX approval_id_FK_8 ON UTBC_agreements(approval_id) ;
DROP INDEX sender_id_FK_9 ;
CREATE INDEX sender_id_FK_9 ON UTBC_email(sender_id) ;
DROP INDEX contact_id_FK_10 ;
CREATE INDEX contact_id_FK_10 ON UTBC_ticklers(contact_id) ;
DROP INDEX agreement_id_FK_11 ;
CREATE INDEX agreement_id_FK_11 ON UTBC_document(agreement_id) ;
DROP INDEX department_id_FK_12 ;
CREATE INDEX department_id_FK_12 ON UTBC_agreements(department_id) ;
DROP INDEX department_id_FK_13 ;
CREATE INDEX department_id_FK_13 ON UTBC_ticklers(department_id) ;
DROP INDEX dept_contact_admin_id_FK_14 ;
CREATE INDEX dept_contact_admin_id_FK_14 ON UTBC_agreements(dept_contact_admin_id) ;
DROP INDEX dept_contact_id_FK_15 ;
CREATE INDEX dept_contact_id_FK_15 ON UTBC_agreements(dept_contact_id) ;
DROP INDEX email_id_FK_16 ;
CREATE INDEX email_id_FK_16 ON UTBC_document(email_id) ;
DROP INDEX agreement_id_FK_17 ;
CREATE INDEX agreement_id_FK_17 ON UTBC_ticklers(agreement_id) ;
DROP INDEX vendor_id_FK_18 ;
CREATE INDEX vendor_id_FK_18 ON UTBC_agreements(vendor_id) ;
DROP INDEX vendor_id_FK_19 ;
CREATE INDEX vendor_id_FK_19 ON UTBC_ticklers(vendor_id) ;
