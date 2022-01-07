create table employees( employee_id varchar(10)  ,
first_name varchar(30) not null ,
last_name varchar(30) not null ,
salary integer  not null ,
department_id varchar(5));

insert into employees(employee_id ,first_name , last_name , salary , department_id)values('e0001' , 'scott' , 'mcall' , 40000 , 'd0001') ;
insert into employees(employee_id ,first_name , last_name , salary , department_id)values('e0002' , 'steve' , 'smith' , 70000 , 'd0002') ;
insert into employees(employee_id ,first_name , last_name , salary , department_id)values('e0003' , 'liam' , 'blake' , 50000 , 'd0003') ;
insert into employees(employee_id ,first_name , last_name , salary , department_id)values('e0004' , 'samir' , 'sharma' , 80000 , 'd0004') ;
insert into employees(employee_id ,first_name , last_name , salary , department_id)values('e0005' , 'aakash' , 'singh' , 60000 , 'd0005') ;
insert into employees(employee_id ,first_name , last_name , salary , department_id)values('e0006' , 'romi' , 'roy' , 80000 , 'd0006') ;

select * from employees ;
drop table employees;

create index employee_idx on employees(last_name , department_id) ;

select ROWID ,employee_id , first_name , last_name
from employees 
where employee_id = 'e0001' ;
   
create unique index unique_idx on employees(employee_id) ; 
drop index unique_idx;

create index reverse_idx on employees(employee_id) REVERSE ; 

insert into employees(employee_id ,first_name , last_name , salary , department_id)values('e0004' , 'samir' , 'sharma' , 80000 , 'd0004') ;
create unique index uni_idx on employees(employee_id) ; 


CREATE INDEX emp_idx ON employees (UPPER(last_name));

drop index emp_idx ;