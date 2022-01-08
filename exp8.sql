
create table employees( e_id varchar(10)  ,
first_name varchar(10) not null ,
last_name varchar(10) not null ,
salary integer  not null ,
d_id integer) ;


DROP TABLE employees;
create sequence emp_seq increment by 1 start with 100 minvalue 100  ;



insert into employees(e_id ,first_name , last_name , salary , d_id)values(emp_seq.nextval , 'samy' , 'jackson' , 50000 , 101) ;
insert into employees(e_id ,first_name , last_name , salary , d_id)values(emp_seq.nextval , 'kapil' , 'dev' , 80000 , 102) ;
insert into employees(e_id ,first_name , last_name , salary , d_id)values(emp_seq.nextval , 'jack' , 'flaming' , 90000 , 103) ;
insert into employees(e_id ,first_name , last_name , salary , d_id)values(emp_seq.nextval , 'neeraj' , 'sigh' , 30000 , 104) ;
insert into employees(e_id ,first_name , last_name , salary , d_id)values(emp_seq.nextval , 'lucifer' , 'martin' , 50000 , 105) ;
insert into employees(e_id ,first_name , last_name , salary , d_id)values(emp_seq.nextval , 'corey' , 'blake' , 60000 , 106) ;

select * from employees ;

select emp_seq.nextval from employees ;
create sequence emp_seq increment by 1 start with 100 minvalue 100 maxvalue 106 ;
select emp_seq.currval from employees ;


ALTER SEQUENCE emp_seq 
   CYCLE
   CACHE 20 ; 

ALTER SEQUENCE emp_seq 
   MAXVALUE 1000 ;

drop sequence emp_seq ; 

Create sequence sq start with 10000 maxvalue 10000
minvalue 1000 increment by -5 ;

insert into employees(e_id ,first_name , last_name , salary , d_id)values(sq.nextval , 'umang' , 'yadav' , 90000 , 108) ;
insert into employees(e_id ,first_name , last_name , salary , d_id)values(sq.nextval , 'rohan' , 'punia' , 65000 , 107) ;
