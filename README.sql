--First enable row movement before flashback 
ALTER TABLE employees_copy ENABLE ROW MOVEMENT; 

--Flashback 
FLASHBACK TABLE employees_copy TO BEFORE DROP; 

--Another option
SELECT dbms_flashback.get_system_change_number as sc FROM dual; 
FLASHBACK TABLE employees_copy TO SCN 202381; 

--Perma deleting tables
DROP TABLE employees_copy purge; 
