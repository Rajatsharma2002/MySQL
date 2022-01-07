use exp1;

create table SUPPLIER(scode Varchar(5) PRIMARY KEY,
sname varchar(15),
scity varchar(15),
turnover integer);

insert into SUPPLIER(scode,sname,scity,turnover)values('S0001','ram','delhi',0) ;
insert into SUPPLIER(scode,sname,scity,turnover)values('S0002','mani','mumbai',15) ;
insert into SUPPLIER(scode,sname,scity,turnover)values('S0003','dev','mohali',0) ;
insert into SUPPLIER(scode,sname,scity,turnover)values('S0004','john','chandigarh',13) ;
insert into SUPPLIER(scode,sname,scity,turnover)values('S0005','samar','chennai',17) ;
insert into SUPPLIER(scode,sname,scity,turnover)values('S0006','anuj','assam',0) ;
insert into SUPPLIER(scode,sname,scity,turnover)values('S0007','ricky','manipur',20) ;
insert into SUPPLIER(scode,sname,scity,turnover)values('S0008','rohan','goa',40) ;
insert into SUPPLIER(scode,sname,scity,turnover)values('S0009','neeraj','dehradun',25) ;
insert into SUPPLIER(scode,sname,scity,turnover)values('S0010','abhi','punjab',60) ;
insert into SUPPLIER(scode,sname,scity,turnover)values('S0011','Rajat','bombay',50) ;

SELECT * FROM SUPPLIER;

create table PART(pcode VARCHAR(5) PRIMARY KEY ,
weigh integer,
colour varchar(15),
cost integer,
selling_price integer);

insert into PART(pcode,weigh,colour,cost,selling_price)values('P0001',40,'orange',60,50);
insert into PART(pcode,weigh,colour,cost,selling_price)values('P0002',26,'brown',20,80);
insert into PART(pcode,weigh,colour,cost,selling_price)values('P0003',55,'purple',40,59);
insert into PART(pcode,weigh,colour,cost,selling_price)values('P0004',31,'yellow',55,90);
insert into PART(pcode,weigh,colour,cost,selling_price)values('P0005',29,'violet',30,40);
insert into PART(pcode,weigh,colour,cost,selling_price)values('P0006',30,'white',20,60);
insert into PART(pcode,weigh,colour,cost,selling_price)values('P0007',80,'black',70,50);
insert into PART(pcode,weigh,colour,cost,selling_price)values('P0008',27,'green',10,50);
insert into PART(pcode,weigh,colour,cost,selling_price)values('P0009',47,'red',50,20);
insert into PART(pcode,weigh,colour,cost,selling_price)values('P0010',30,'blue',40,80);

SELECT * FROM PART;

select pcode from part 
where 25<weigh and weigh<35 ; 
select pcode from part 
where cost = 20 or cost = 30 or cost = 40 ; 



create table SUPPLIER_PART(scode VARCHAR(5),
pcode VARCHAR(5) ,
qty integer,
PRIMARY KEY(scode , pcode),
FOREIGN KEY(scode) REFERENCES SUPPLIER(scode),
FOREIGN KEY(pcode) REFERENCES PART(pcode));

insert into SUPPLIER_PART(scode,pcode,qty)values('S0001','P0001',20); 
insert into SUPPLIER_PART(scode,pcode,qty)values('S0002','P0002',50); 
insert into SUPPLIER_PART(scode,pcode,qty)values('S0003','P0003',10); 
insert into SUPPLIER_PART(scode,pcode,qty)values('S0004','P0004',30); 
insert into SUPPLIER_PART(scode,pcode,qty)values('S0005','P0005',25); 
insert into SUPPLIER_PART(scode,pcode,qty)values('S0006','P0006',23); 
insert into SUPPLIER_PART(scode,pcode,qty)values('S0007','P0007',40); 
insert into SUPPLIER_PART(scode,pcode,qty)values('S0008','P0008',60); 
insert into SUPPLIER_PART(scode,pcode,qty)values('S0009','P0009',45); 
insert into SUPPLIER_PART(scode,pcode,qty)values('S0010','P0010',70); 

select scode , pcode
from SUPPLIER,PART
order by scode ASC ;

select sum(qty) from SUPPLIER_PART
where pcode = 'P0002' ;




SELECT * FROM SUPPLIER_PART;


select scode , pcode
from supplier,part 
order by scode ASC ;

select * from SUPPLIER
where scity = 'bombay' and turnover = 50 ;

select count(*) from SUPPLIER ;

select scode from SUPPLIER 
where turnover = 0 ;

select scode , turnover FROM SUPPLIER
order by turnover desc ;

select sname from SUPPLIER, SUPPLIER_PART
where SUPPLIER.scode = SUPPLIER_PART.scode and pcode = 'p0002' ;

select pcode from PART
where cost > (SELECT AVG(cost) FROM PART) ;



 
