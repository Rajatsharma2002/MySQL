use exp1;

create table info(attribute_id Varchar(5) ,
name varchar(15),
age integer,
address varchar(30),
salary integer );

INSERT INTO info(attribute_id,name,age,address,salary)VALUES('A0001','raj shekhar',28,'#123 mohali',30000);
INSERT INTO info(attribute_id,name,age,address,salary)VALUES('A0002','amit sharma',38,'#223 delhi',40000);
INSERT INTO info(attribute_id,name,age,address,salary)VALUES('A0003','yash',25,'#1333 chandigarh',50000);
INSERT INTO info(attribute_id,name,age,address,salary)VALUES('A0004','rohan singh',27,'#4523 kharar',30000);
INSERT INTO info(attribute_id,name,age,address,salary)VALUES('A0005','scott macall',24,'#923 london',40000);
INSERT INTO info(attribute_id,name,age,address,salary)VALUES('A0006','ram kumar',30,'#5423 goa',60000);
INSERT INTO info(attribute_id,name,age,address,salary)VALUES('A0007','neeraj kumar',23,'#8883 goa',90000);
INSERT INTO info(attribute_id,name,age,address,salary)VALUES('A0008','animesh joshi',25,'#6623 mumbai',10000);

select * from info ;
COMMIT ; 

delete from info where salary=30000 ;
ROLLBACK ;
rollback;
select * from info ;

START TRANSACTION ;

savepoint sp1 ;
delete from info where attribute_id = 'A0003' ; 
savepoint sp2 ;
delete from info where attribute_id = 'A0005' ; 
savepoint sp3;
delete from info where attribute_id = 'A0007' ;
savepoint sp4; 
delete from info where attribute_id = 'A0001' ; 
savepoint sp5;

rollback to sp4;
rollback to sp3;
rollback to sp2;
rollback to sp1;