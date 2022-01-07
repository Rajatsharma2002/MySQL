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
HIREDATE date,
SAL INTEGER,
COMM INTEGER,
DEPTNO INTEGER,
FOREIGN KEY(DEPTNO) REFERENCES DEPT(DEPTNO));

INSERT INTO EMP(EMP_NO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) VALUES(7369,'SMITH','CLERK',7902,'80-12-17',500,800,20);
INSERT INTO EMP(EMP_NO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) VALUES(7499,'ALLEN','SALESMAN',7698,'81-02-20',1600,300,30);
INSERT INTO EMP(EMP_NO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) VALUES(7521,'WARD','SALESMAN',7698,'81-02-22',1250,500,30);
INSERT INTO EMP(EMP_NO,ENAME,JOB,MGR,HIREDATE,SAL,DEPTNO) VALUES(7566,'JONES','MANAGER',7839,'81-04-02',2975,20);
INSERT INTO EMP(EMP_NO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) VALUES(7654,'MARTIN','SALESMAN',7698,'81-09-28',1250,1400,30);
INSERT INTO EMP(EMP_NO,ENAME,JOB,MGR,HIREDATE,SAL,DEPTNO) VALUES(7698,'BLAKE','MANAGER',7839,'81-05-01',2850,30);
INSERT INTO EMP(EMP_NO,ENAME,JOB,MGR,HIREDATE,SAL,DEPTNO) VALUES(7782,'CLARK','MANAGER',7839,'81-06-09',2450,10);
INSERT INTO EMP(EMP_NO,ENAME,JOB,MGR,HIREDATE,SAL,DEPTNO) VALUES(7788,'SCOTT','ANALYST',7566,'82-12-09',3000,20);
INSERT INTO EMP(EMP_NO,ENAME,JOB,HIREDATE,SAL,DEPTNO) VALUES(7839,'KING','PRESIDENT','81-11-17',5000,10);
INSERT INTO EMP(EMP_NO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) VALUES(7844,'TURNER','SALESMAN',7698,'81-09-08',1500,0,30);
INSERT INTO EMP(EMP_NO,ENAME,JOB,MGR,HIREDATE,SAL,DEPTNO) VALUES(7876,'ADAMS','CLERK',7788,'83-01-12',1100,20);
INSERT INTO EMP(EMP_NO,ENAME,JOB,MGR,HIREDATE,SAL,DEPTNO) VALUES(7900,'JAMES','CLERK',7698,'81-12-03',950,30);
INSERT INTO EMP(EMP_NO,ENAME,JOB,MGR,HIREDATE,SAL,DEPTNO) VALUES(7902,'FORD','ANALYST',7566,'81-12-03',3000,20);
INSERT INTO EMP(EMP_NO,ENAME,JOB,MGR,HIREDATE,SAL,DEPTNO) VALUES(7934,'MILLER','CLERK',7782,'82-01-23',1300,10);
SELECT * FROM EMP;


SELECT dept.deptno from dept left join emp on dept.deptno=emp.deptno where emp.deptno is null;
select count(*) , avg(sal) deptno, job from emp group by deptno, job;
SELECT max(avg)
FROM
  (SELECT avg(sal) avg
   FROM emp left join dept on emp.deptno=dept.deptno
   WHERE job != 'PRESIDENT'
   GROUP BY job) a;
   
SELECT dept.deptno,
       count(*)
FROM emp inner join dept on emp.deptno=dept.deptno
GROUP BY deptno
HAVING count(*) >= 2;

select count(*) as count,dept.DNAME 
from emp 
inner join dept on emp.DEPTNO = dept.DEPTNO 
group by dept.DNAME;
SELECT emp.ename,dept.Deptno, MAX(Sal) FROM Emp inner join dept on emp.deptno=dept.deptno GROUP BY Deptno;
select dept.deptno,avg(sal) from emp inner join dept on emp.deptno=dept.deptno group by deptno
having avg(sal) <(select avg(Sal) from emp);

select emp.emp_no, emp.ename, emp.job, emp.mgr , emp.hiredate ,emp.sal ,emp.comm,dept.deptno ,dept.dname,dept.loc from emp left join dept on emp.deptno=dept.deptno
where sal > (select sal from emp where ename = 'blake') ;

select emp.emp_no, emp.ename, emp.job, emp.mgr , emp.hiredate ,emp.sal ,emp.comm,dept.deptno ,dept.dname,dept.loc from emp left join dept on emp.deptno=dept.deptno 
where job = (select job from emp where ename = 'allen');

select emp.emp_no, emp.ename, emp.job, emp.mgr , emp.hiredate ,emp.sal ,emp.comm,dept.deptno ,dept.dname,dept.loc from emp left join dept on emp.deptno=dept.deptno
where SAL in (select sal from emp where (ename = 'FORD' or ename = 'SMITH'))  order by ENAME desc ;

select emp.emp_no, emp.ename, emp.job, emp.mgr , emp.hiredate ,emp.sal ,emp.comm,dept.deptno ,dept.dname,dept.loc from emp left join dept on emp.deptno=dept.deptno
where job = (select job from emp where ename = 'miller') or sal > (select sal from emp where ename = 'allen') ;

Select emp.ENAME from EMP right join dept on dept.deptno=emp.deptno
where HIREDATE < (select max(hiredate) from emp 
where MGR in (select EMP_NO from emp where ENAME = 'king')) ;

select EMP.ename from emp inner join dept on emp.deptno = dept.deptno
where sal = (select max(sal) from emp
where deptno = (select deptno from dept where dname = 'sales')) ;

select emp.ENAME ,emp.DEPTNO from emp inner join dept on emp.deptno=dept.deptno
where sal in (select max(sal) from emp group by DEPTNO);

select emp.emp_no, emp.ename, emp.job, emp.mgr , emp.hiredate ,emp.sal ,emp.comm,dept.deptno  from emp left join dept on emp.deptno=dept.deptno
where sal = (select (max(sal)+min(sal))/2 from emp) ; 

 select e.emp_no, e.ename, e.job, e.mgr , e.hiredate ,e.sal ,e.comm,dept.deptno  from emp e inner join dept on e.deptno=dept.deptno
where HIREDATE < (select HIREDATE from emp 
where EMP_NO = e.mgr);

select e.emp_no, e.ename, e.job, e.mgr , e.hiredate ,e.sal ,e.comm,dept.deptno  from emp e inner join dept on e.deptno=dept.deptno
where hiredate in (select hiredate from emp where e.emp_no <> emp_no ) ;






