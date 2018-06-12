CREATE OR REPLACE TRIGGER rahul_test."T_DEMO" before insert on rahul_test."DEMO"
  for each row  
begin   
  if :NEW."DEMO.ID" is null then 
    select "SQ_DEMO".nextval into :NEW."DEMO_ID" from sys.dual; 
  end if; 
end;
/