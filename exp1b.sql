use db1;

CREATE TABLE SALESMAN_MASTER( SALESMANNO VARCHAR(6) NOT NULL ,
SALESMAN_NAME VARCHAR(20) ,
ADDRESS1 VARCHAR(30) ,
ADDRESS2 VARCHAR(30) ,
CITY VARCHAR(20) ,
PINCODE INTEGER ,
STATE VARCHAR(20) ,
SALAMT INTEGER ,
TGTTOGET INTEGER ,
YTDSALES decimal(6,2) ,
REMARKS VARCHAR(60));

select * from SALESMAN_MASTER


INSERT INTO SALESMAN_MASTER( SALESMANNO ,SALESMAN_NAME ,ADDRESS1 ,ADDRESS2 ,CITY ,PINCODE ,STATE)VALUES('S00001','Aman','A/14','Worli','Mumbai',400002,'Maharashtra');
INSERT INTO SALESMAN_MASTER( SALESMANNO ,SALESMAN_NAME ,ADDRESS1 ,ADDRESS2 ,CITY,PINCODE,STATE)VALUES('S00002','Omkar','65','Nariman','Mumbai',400001,'Maharashtra');
INSERT INTO SALESMAN_MASTER( SALESMANNO ,SALESMAN_NAME ,ADDRESS1 ,ADDRESS2 ,CITY ,PINCODE ,STATE)VALUES('S00003','Raj','P-7','Bandra','Mumbai',400032,'Maharashtra');
INSERT INTO SALESMAN_MASTER( SALESMANNO ,SALESMAN_NAME ,ADDRESS1 ,ADDRESS2 ,CITY ,PINCODE ,STATE)VALUES('S00004','Ashish','A/5','Juhu','Mumbai',400044,'Maharashtra');

ALTER TABLE SALESMAN_MASTER RENAME TO SMAN_MAST;
select * from SMAN_MAST;
UPDATE  SMAN_MAST
SET CITY='PUNE'
WHERE SALESMANNO='S00002';
DELETE FROM SALESMAN_MASTER WHERE SALAMT=30000;
