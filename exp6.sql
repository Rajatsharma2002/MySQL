use db1

create table EMPLOYEES(emp_id varchar(10) primary key,
f_name varchar(10) not null,
l_name varchar(10) not null,
DOB date,
salary integer not null,
dept_no varchar(10));

select *from EMPLOYEES

INSERT INTO EMPLOYEES(emp_id,f_name,l_name,DOB,salary,dept_no)values('e0001','Rishi','gupta','91-05-11',30000,'d0001');
INSERT INTO EMPLOYEES(emp_id,f_name,l_name,DOB,salary,dept_no)values('e0002','Stuart','blake','90-01-18',60000,'d0002');
INSERT INTO EMPLOYEES(emp_id,f_name,l_name,DOB,salary,dept_no)values('e0003','Gurpreet','singh','91-01-11',80000,'d0003');
INSERT INTO EMPLOYEES(emp_id,f_name,l_name,DOB,salary,dept_no)values('e0004','Dev','sharma','92-07-12',50000,'d0004');
INSERT INTO EMPLOYEES(emp_id,f_name,l_name,DOB,salary,dept_no)values('e0005','Ammy','joshi','90-09-01',10000,'d0005');
INSERT INTO EMPLOYEES(emp_id,f_name,l_name,DOB,salary,dept_no)values('e0006','Peter','Hale','91-02-21',70000,'d0006');

CREATE VIEW EMP_view as select emp_id,l_name,salary,dept_no from EMPLOYEES;
SELECT *FROM EMP_view;

alter table EMPLOYEES modify f_name varchar(10);
INSERT INTO EMP_view(emp_id,l_name,salary,dept_no)values('e0007','rana',90000,'d0007');
INSERT INTO EMP_view(emp_id,l_name,salary,dept_no)values('e0008','saini',40000,'d0008');
INSERT INTO EMP_view(emp_id,l_name,salary,dept_no)values('e0009','mcall',55000,'d0009');
INSERT INTO EMP_view(emp_id,l_name,salary,dept_no)values('e0010','pandey',25000,'d0010');

UPDATE EMP_view set salary =45000 where emp_id='e0006';
UPDATE EMP_view set l_name ='hopper' where salary=10000;
UPDATE EMP_view set salary =65000 where dept_no='d0005';
UPDATE EMP_view set dept_no ='d0011' where l_name='mcall';
UPDATE EMP_view set dept_no ='d0030' where l_name='saini';

delete from EMP_view where salary=80000;
delete from EMP_view where l_name='hopper';

DROP VIEW `db1`.`emp_view`;

CREATE VIEW salary_view AS
SELECT f_name,l_name,salary*12 FROM employees 
WHERE dept_no = 'd0002';
select * from salary_view;
