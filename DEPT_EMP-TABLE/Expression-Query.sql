--WAQTD name of the employee along with their annual salary
SELECT ENAME, SAL*12 AS ANNUAL_SAL FROM EMP;

--WAQTD ename and job for all the employee with their half term salary
SELECT ENAME, JOB, SAL*6 AS HALF_TERM_SAL FROM EMP;

--WAQTD all the details of the employees along with as annualbonus of 2000
SELECT *, SAL*12+2000 AS ANNUAL_BONUS_SAL FROM EMP;

--WAQTD name salary and salary with a hike of 10%.
SELECT ENAME, SAL, SAL+(SAL*10/100) AS SALARY_WITH_HIKE FROM EMP;

--WAQTD name and salary with deduction of 25%.
SELECT ENAME, SAL-(SAL*25/100) AS SAL_DEDUCTION FROM EMP;

--WAQTD name and salary with monthly hike of 50.
SELECT ENAME, SAL+50 AS SALARY_MONTHLY_HIKE FROM EMP;

--WAQTD name and annual salary with deduction of 10%. 
SELECT ENAME, (SAL*12)-((SAL*12)*10/100) AS ANNUAL_SAL_WITH_DEDUCTION FROM EMP;

--WAQTD total salary given to each employee (SAL+COMM).
SELECT SAL+COALESCE(COMM, 0) AS TOTAL_SALARY FROM EMP;

--WAQTD details of all the employees along with annual salary.
SELECT *, SAL*12 AS ANNUAL_SALARY FROM EMP;

--WAQTD name and designation along with 100 penalty in salary.
SELECT ENAME, JOB, SAL-100 FROM EMP;

--WAQTD name and designation along with 100 penalty in salary.
SELECT ENAME, JOB, SAL - 100 AS SALARY_WITH_PENALTY FROM EMP;

