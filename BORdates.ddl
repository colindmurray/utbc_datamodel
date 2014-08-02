CREATE TABLE UTBC_BORdates
(
	BORdate_id			INTEGER NOT NULL,
	agenda_duedate		DATE,
	meeting_date		DATE
);
ALTER TABLE UTBC_BORdates ADD CONSTRAINT UTBC_BORdates_id_pk PRIMARY KEY ( BORdate_id ) ;

DROP SEQUENCE UTBC_BORdates_seq ; 
create sequence UTBC_BORdates_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER UTBC_BORdates_PK_trig 
; 

create or replace trigger UTBC_BORdates_PK_trig 
before insert on UTBC_BORdates
for each row 
begin 
select UTBC_BORdates_seq.nextval into :new.BORdate_id from dual; 
end; 
/

DROP SEQUENCE UTBC_BORdates_seq ; 
create sequence UTBC_BORdates_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger UTBC_BORdates_PK_trig 
before insert on UTBC_BORdates
for each row 
begin 
select UTBC_agreements_seq.nextval into :new.BORdate_id from dual; 
end; 
/ 
alter table UTBC_BORdates add created date ; 
alter table UTBC_BORdates add created_by VARCHAR2 (255) ; 
alter table UTBC_BORdates add row_version_number integer ; 
alter table UTBC_BORdates add updated date ; 
alter table UTBC_BORdates add updated_by VARCHAR2 (255) ; 
/
create or replace trigger UTBC_BORdates_AUD_trig 
before insert or update on UTBC_BORdates 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/