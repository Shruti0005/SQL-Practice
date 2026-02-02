--SINGLE ROW FUNCTIONS
--List employees whose name having 4 characters
SELECT * 
FROM EMP 
WHERE LENGTH(ENAME) = 4;

--List employees whose job is having 7 characters
SELECT * 
FROM EMP 
WHERE LENGTH(JOB) = 7;

-- List the employees whose job is having last 3 characters as 'man'
SELECT * 
FROM EMP 
WHERE SUBSTR(JOB, -3) = 'MAN';

--List employees whose job is having first 3 characters as 'man'.
SELECT *
FROM EMP 
WHERE SUBSTR(JOB, 1, 3) = 'MAN';

--Display all the names whose name is having exactly 1 'L'
SELECT * 
FROM EMP 
WHERE LOCATE('L', ENAME) != 0;

--Display dept names which are having letter 'O'
SELECT DNAME 
FROM DEPT 
WHERE LOCATE('O', DNAME) != 0;

--Calculate number of L in string 'INTELLIGENT'
 SELECT LENGTH('INTELLIGENT') - LENGTH(REPLACE('INTELLIGENT', 'L', ''));

--Display all the employees whose job has a string 'MAN'
SELECT * 
FROM EMP 
WHERE LOCATE('MAN', JOB) != 0;

--Display first 3 characters of ename in lower case and rest everything in upper case. If ename is 'INTELLIGENT' then display this as ‘intelLIGENT’
SELECT CONCAT(LOWER(SUBSTR('intelligent', 1, 5)), UPPER(SUBSTR('intelligent', 6)));

--Display the result from emp table as below. SMITH is a CLERK and gets salary 2000 Here SMITH is ename column, CLERK is JOB and 2000 is SAL column and rest everything is literal strings
SELECT CONCAT(ENAME, ' works as ', JOB, ' and salary is ', SAL) AS SENTENCE 
FROM EMP 
WHERE ENAME = 'SMITH';

--list the employees hired on a Wednesday
SELECT * 
FROM EMP 
WHERE DATE_FORMAT(HIREDATE, '%W') = 'Wednesday';

--.list the employees hired on a leap year
SELECT *
FROM EMP 
WHERE (YEAR(HIREDATE) % 4 = 0 AND YEAR(HIREDATE) % 100 != 0) OR YEAR(HIREDATE) % 400 = 0;

--list the employees hired on a Sunday in the month of may
SELECT * 
FROM EMP 
WHERE DATE_FORMAT(HIREDATE, '%W') = 'Sunday' AND DATE_FORMAT(HIREDATE, '%M') = 'May';

-- Display employee names in uppercase and show the length of the name.
SELECT UPPER(ENAME) AS EMP_NAME, LENGTH(ENAME) AS NAME_LENGTH
FROM EMP;

-- Display employee name and salary after 20% increment
SELECT ENAME, SAL, ROUND(SAL+(SAL*20/100)) AS NEW_SALARY 
FROM EMP;

-- Display employee name and the first 4 characters of their job.
SELECT ENAME, SUBSTR(JOB, 1, 4) AS SHORT_JOB 
FROM EMP;

-- Display employee name and total income.
SELECT ENAME, SAL + COALESCE(COMM, 0) AS TOTAL_INCOME FROM EMP;

-- Display employee names that contain letter 'A' anywhere.
SELECT ENAME 
FROM EMP 
WHERE LOCATE('A', ENAME) > 0;

-- Display employee name and number of years they worked, but: If experience > 10 → show "Veteran" Otherwise → "Junior"
SELECT ENAME, 
       CASE 
          WHEN TIMESTAMPDIFF(YEAR, HIREDATE, CURDATE()) > 10 THEN "Veteran" 
          ELSE "Junior" 
       END AS EXPERIENCE 
FROM EMP;

-- Display employee name and hire date formatted like: 31-JANUARY-2020
SELECT ENAME, DATE_FORMAT(HIREDATE, '%d-%M-%Y') 
FROM EMP;

-- Display employee name reversed AND in uppercase.
SELECT UPPER(REVERSE(ENAME))
FROM EMP; 

-- Display employee name and the position of letter 'E'.
SELECT ENAME, LOCATE('E', ENAME) AS POSSITON_E 
FROM EMP;

-- Display employee name and salary difference from 5000.
SELECT ENAME, ABS(SAL - 5000) AS SAL_DIFFRENCE 
FROM EMP;

-- Display employee names like: S****H A***N
SELECT CONCAT(LEFT(ENAME, 1), REPEAT('*', LENGTH(ENAME) - 2), RIGHT(ENAME, 2)) AS NAME_MASKING 
FROM EMP;

-- Create employee code like: SMI7836 Where - First 3 letters of name. - Last 2 digits of salary
SELECT CONCAT(SUBSTR(ENAME, 2, 3), SUBSTR(SAL, -3)) AS EMP_CODE 
FROM EMP;

--Name in Proper Case  CONVERT: - SMITH → Smith ALLEN → Allen
SELECT CONCAT(SUBSTR(ENAME, 1, 1), SUBSTR(ENAME, 2)) AS PROPER_CASE 
FROM EMP;

-- Reverse Name + Salary OUTPUT: - HTIMS earns 3000
SELECT CONCAT(REVERSE(ENAME), ' earns ', SAL) AS REVERSE_NAME_SAL 
FROM EMP;
