use exp;
create table DEPT(DEPTNO INTEGER PRIMARY KEY ,
DNAME VARCHAR(15),
LOC VARCHAR(15));

INSERT INTO DEPT(DEPTNO,DNAME,LOC) VALUES(10,'ACCOUNTING','NEW YORK');

INSERT INTO DEPT(DEPTNO,DNAME,LOC) VALUES(20,'RESEARCH','PARIS');

INSERT INTO DEPT(DEPTNO,DNAME,LOC) VALUES(30,'OPERATIONS','CHICAGO');

select * from dept;

create table employee(EMP_NO INTEGER ,
ENAME VARCHAR(15) ,
JOB VARCHAR(15),
SAL INTEGER,
DEPTNO INTEGER,
FOREIGN KEY(DEPTNO) REFERENCES DEPT(DEPTNO));

insert into employee(emp_no,ename,job,sal,deptno)values(7439,'alexa','analyst',70000,20) ;
insert into employee(emp_no,ename,job,sal,deptno)values(7389,'steward','manager',36200,10) ;
insert into employee(emp_no,ename,job,sal,deptno)values(7569,'micheal','manager',99450,20) ;
insert into employee(emp_no,ename,job,sal,deptno)values(7239,'scott','salesman',89000,30) ;
insert into employee(emp_no,ename,job,sal,deptno)values(7899,'sam','president',40000,30) ;
insert into employee(emp_no,ename,job,sal,deptno)values(7629,'martin','salesman',60000,10) ;
insert into employee(emp_no,ename,job,sal,deptno)values(7999,'bean','clerk',40000,20) ;
insert into employee(emp_no,ename,job,sal,deptno)values(7789,'lucky','salesman',98000,30) ;
insert into employee(emp_no,ename,job,sal,deptno)values(7559,'shane','analyst',10000,10) ;
insert into employee(emp_no,ename,job,sal,deptno)values(7119,'steve','clerk',39000,20) ;

select*from employee;

create table sales(DEPTNO integer , 
s_id integer , 
s_price integer , 
FOREIGN KEY(DEPTNO) REFERENCES DEPT(DEPTNO)) ;

insert into sales(deptno,s_id,s_price)values(10,1001,6000);
insert into sales(deptno,s_id,s_price)values(20,1002,9000);
insert into sales(deptno,s_id,s_price)values(20,1003,1000);
insert into sales(deptno,s_id,s_price)values(30,1004,7000);
insert into sales(deptno,s_id,s_price)values(10,1005,4500);
insert into sales(deptno,s_id,s_price)values(30,1006,6800);
insert into sales(deptno,s_id,s_price)values(10,1007,9000);
insert into sales(deptno,s_id,s_price)values(20,1008,5000);
insert into sales(deptno,s_id,s_price)values(30,1009,3000);
insert into sales(deptno,s_id,s_price)values(10,1010,8000);

select * from sales;

select employee.ename,dept.dname,dept.loc from employee inner join dept on employee.deptno=dept.deptno;

