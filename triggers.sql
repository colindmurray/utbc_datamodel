CREATE OR REPLACE TRIGGER user_name
BEFORE INSERT OR UPDATE
ON UTBC_agreements
FOR EACH ROW
BEGIN
	:new.reviewed_by := nvl(wwv_flow.g_user,user); 
END;