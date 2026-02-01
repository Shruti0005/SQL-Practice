--SINGLE ROW FUNCTIONS
--List employees whose name having 4 characters
SELECT * FROM EMP WHERE LENGTH(ENAME) = 4;

--List employees whose job is having 7 characters
SELECT * FROM EMP WHERE LENGTH(JOB) = 7;

-- List the employees whose job is having last 3 characters as 'man'
SELECT * FROM EMP WHERE SUBSTR(JOB, -3) = 'MAN';

--List employees whose job is having first 3 characters as 'man'.
SELECT * FROM EMP WHERE SUBSTR(JOB, 1, 3) = 'MAN';

--Display all the names whose name is having exactly 1 'L'
SELECT * FROM EMP WHERE LOCATE('L', ENAME) != 0;

--Display dept names which are having letter 'O'
SELECT DNAME FROM DEPT WHERE LOCATE('O', DNAME) != 0;

--Calculate number of L in string 'INTELLIGENT'
 SELECT LENGTH('INTELLIGENT') - LENGTH(REPLACE('INTELLIGENT', 'L', ''));

--Display all the employees whose job has a string 'MAN'
SELECT * FROM EMP WHERE LOCATE('MAN', JOB) != 0;

--Display first 3 characters of ename in lower case and rest everything in upper case. If ename is 'INTELLIGENT' then display this as ‘intelLIGENT’
SELECT CONCAT(LOWER(SUBSTR('intelligent', 1, 5)), UPPER(SUBSTR('intelligent', 6)));

--Display the result from emp table as below. SMITH is a CLERK and gets salary 2000 Here SMITH is ename column, CLERK is JOB and 2000 is SAL column and rest everything is literal strings
SELECT CONCAT(ENAME, ' works as ', JOB, ' and salary is ', SAL) AS SENTENCE FROM EMP WHERE ENAME = 'SMITH';

--list the employees hired on a Wednesday
SELECT * FROM EMP WHERE DATE_FORMAT(HIREDATE, '%W') = 'Wednesday';

--.list the employees hired on a leap year
SELECT * FROM EMP WHERE (YEAR(HIREDATE) % 4 = 0 AND YEAR(HIREDATE) % 100 != 0) OR YEAR(HIREDATE) % 400 = 0;

--list the employees hired on a Sunday in the month of may
SELECT * FROM EMP WHERE DATE_FORMAT(HIREDATE, '%W') = 'Sunday' AND DATE_FORMAT(HIREDATE, '%M') = 'May';
