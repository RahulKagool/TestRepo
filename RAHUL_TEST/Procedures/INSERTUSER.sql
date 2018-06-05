CREATE OR REPLACE procedure rahul_test."INSERTUSER"    
(id IN NUMBER,    
name IN VARCHAR2)    
is    
begin    
insert into employee values(id,name);    
end;    
/