use db1;

create table DEPT(DEPTNO INTEGER PRIMARY KEY ,
DNAME VARCHAR(15),
LOC VARCHAR(15));

INSERT INTO DEPT(DEPTNO,DNAME,LOC) VALUES(10,'ACCOUNTING','NEW YORK');
INSERT INTO DEPT(DEPTNO,DNAME,LOC) VALUES(20,'RESEARCH','DALLAS');
INSERT INTO DEPT(DEPTNO,DNAME,LOC) VALUES(30,'SALES','CHICAGO');
INSERT INTO DEPT(DEPTNO,DNAME,LOC) VALUES(40,'OPERATIONS','BOSTON');

SELECT *FROM DEPT;

create table EMP(EMP_NO INTEGER ,
ENAME VARCHAR(15) ,
JOB VARCHAR(15),
MGR INTEGER,
HIREDATE varchar(15),
SAL INTEGER,
COMM INTEGER,
DEPTNO INTEGER,
FOREIGN KEY(DEPTNO) REFERENCES DEPT(DEPTNO));

INSERT INTO EMP(EMP_NO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) VALUES(7369,'SMITH','CLERK',7902,'17-DEC-1980',500,800,20);
INSERT INTO EMP(EMP_NO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) VALUES(7499,'ALLEN','SALESMAN',7698,'20-FEB-81',1600,300,30);
INSERT INTO EMP(EMP_NO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) VALUES(7521,'WARD','SALESMAN',7698,'22-FEB-81',1250,500,30);
INSERT INTO EMP(EMP_NO,ENAME,JOB,MGR,HIREDATE,SAL,DEPTNO) VALUES(7566,'JONES','MANAGER',7839,'02-APRIL-81',2975,20);
INSERT INTO EMP(EMP_NO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) VALUES(7654,'MARTIN','SALESMAN',7698,'28-SEPT-81',1250,1400,30);
INSERT INTO EMP(EMP_NO,ENAME,JOB,MGR,HIREDATE,SAL,DEPTNO) VALUES(7698,'BLAKE','MANAGER',7839,'01-MAY-81',2850,30);
INSERT INTO EMP(EMP_NO,ENAME,JOB,MGR,HIREDATE,SAL,DEPTNO) VALUES(7782,'CLARK','MANAGER',7839,'09-JUN-81',2450,10);
INSERT INTO EMP(EMP_NO,ENAME,JOB,MGR,HIREDATE,SAL,DEPTNO) VALUES(7788,'SCOTT','ANALYST',7566,'09-DEC-82',3000,20);
INSERT INTO EMP(EMP_NO,ENAME,JOB,HIREDATE,SAL,DEPTNO) VALUES(7839,'KING','PRESIDENT','17-NOV-81',5000,10);
INSERT INTO EMP(EMP_NO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) VALUES(7844,'TURNER','SALESMAN',7698,'08-SEPT-81',1500,0,30);
INSERT INTO EMP(EMP_NO,ENAME,JOB,MGR,HIREDATE,SAL,DEPTNO) VALUES(7876,'ADAMS','CLERK',7788,'12-JAN-83',1100,20);
INSERT INTO EMP(EMP_NO,ENAME,JOB,MGR,HIREDATE,SAL,DEPTNO) VALUES(7900,'JAMES','CLERK',7698,'03-DEC-81',950,30);
INSERT INTO EMP(EMP_NO,ENAME,JOB,MGR,HIREDATE,SAL,DEPTNO) VALUES(7902,'FORD','ANALYST',7566,'03-DEC-81',3000,20);
INSERT INTO EMP(EMP_NO,ENAME,JOB,MGR,HIREDATE,SAL,DEPTNO) VALUES(7934,'MILLER','CLERK',7782,'23-JAN-82',1300,10);
SELECT * FROM EMP;
select * from emp 
where sal > (select sal from emp where ename = 'blake') ;
select * from emp 
where job = (select job from emp where ename = 'allen');
select * from emp 
where SAL in (select SAL from EMP where (ename = 'FORD' or ename = 'SMITH'))  order by ENAME desc ;
select * from emp 
where job = (select job from emp where ename = 'miller') or sal > (select sal from emp where ename = 'allen') ;
select ENAME from emp 
where sal = (select max(sal) from emp
where deptno = (select deptno from dept where dname = 'sales')) ;
select ENAME from EMP
where HIREDATE < (select max(hiredate) from emp 
where mgr in (select emp_no from emp where ename = 'king')) ;
select ENAME , DEPTNO from emp 
where sal in (select max(sal) from emp group by DEPTNO);
select * from emp 
where sal = (select (max(sal)+min(sal))/2 from emp) ; 
select * from EMP e 
where HIREDATE < (select HIREDATE from EMP 
where EMP_NO = e.HIREDATE);
select * from emp e
where hiredate in (select hiredate from emp where e.emp_no <> emp_no ) ;














 