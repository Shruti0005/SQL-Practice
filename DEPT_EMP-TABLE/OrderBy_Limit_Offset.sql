-- Order By
-- Display all employees ordered by salary in ascending order.
SELECT *
FROM EMP
ORDER BY SAL ASC;

-- Display employee name and salary ordered by salary descending.
SELECT ENAME, SAL
FROM EMP
ORDER BY SAL DESC;

-- Display employees ordered by hire date (oldest first).
SELECT *
FROM EMP
ORDER BY HIREDATE ASC;

-- Display employees ordered by name alphabetically.
SELECT ENAME
FROM EMP
ORDER BY ENAME ASC;

-- Display employees ordered by:
-- 1. Department number ascending
-- 2. Salary descending within department.
SELECT * 
FROM EMP  
ORDER BY DEPTNO ASC, SAL DESC;

-- Display employees ordered by job, and within job by salary.
SELECT * 
FROM EMP 
ORDER BY JOB ASC, SAL ASC;

-- Limit
-- Display top 5 highest paid employees.
SELECT *
FROM EMP
ORDER BY SAL DESC
LIMIT 5;

-- Display first 3 employees ordered by hire date.
SELECT *
FROM EMP
ORDER BY HIREDATE ASC
LIMIT 3;

-- Display lowest 4 salary employees.
SELECT *
FROM EMP
ORDER BY SAL ASC
LIMIT 4;

-- Display top 2 employees hired recently.
SELECT * 
FROM EMP 
ORDER BY 
HIREDATE DESC 
LIMIT 2;

-- Limit + Offset
-- Display 2nd highest paid employee.
SELECT *
FROM EMP
ORDER BY SAL DESC
LIMIT 1
OFFSET 1;

-- Display employees ranked 3rd to 5th highest salary.
SELECT *
FROM EMP
ORDER BY SAL DESC
LIMIT 3
OFFSET 2;

-- Display next 3 employees after first 2 highest salaries.
SELECT *
FROM EMP
ORDER BY SAL DESC
LIMIT 3
OFFSET 2;

-- Display employees starting from 5th record, showing next 3.
SELECT *
FROM EMP
LIMIT 3
OFFSET 4;

-- Display 5th highest salary employee.
SELECT *
FROM EMP 
ORDER BY SAL DESC
LIMIT 1
OFFSET 4;
