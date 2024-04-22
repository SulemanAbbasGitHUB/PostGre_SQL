Select * From employees Where 1=1
Select * From employees where department= 'Clothing' And Salary>1000
Select * From employees where department= 'Clothing' And Salary>1000 And region_id = '4' or gender = 'F'
Select * From employees where department= 'Clothing' And Salary>1000 And region_id = 2 or gender = 'F'
Select * From employees where department= 'Clothing' And Salary>1000 And region_id = 2 And gender = 'F'
Select * From employees where department= 'Clothing' And (Salary>1000 Or region_id = 2 or gender = 'F')
Select * From employees where department= 'Clothing' And department='Pharmacy'
Select * From employees where department= 'Clothing' OR department='Pharmacy'
Select * From employees where NOT department= 'Clothing' OR department='Pharmacy'
Select * From employees where NOT (department= 'Clothing' OR department='Pharmacy')
Select * From employees where department != 'Clothing' OR department='Pharmacy'
Select * From employees where (department <> 'Clothing' OR department='Pharmacy')
Select * From employees where NOT (department<> 'Clothing' OR department='Pharmacy')
Select * From employees where (department<> 'Clothing' OR department='Pharmacy' OR email = Null)
Select * From employees where (department<> 'Clothing' OR department='Pharmacy' OR Null = null)
Select * From employees where (department<> 'Clothing' OR department='Pharmacy' And Null = null)
Select * From employees where (department<> 'Clothing' OR department='Pharmacy' And Null != null)
Select * From employees where (department<> 'Clothing' OR department='Pharmacy' And email != null)
Select * From employees Where Not email Is null
Select * From employees where (department<> 'Clothing' OR (department='Pharmacy' OR department='Computers')And Null != null)
Select * From employees where (department<> 'Clothing' AND (department='Pharmacy' OR department='Computers'))
Select * From employees where (department<> 'Clothing' AND (department='Pharmacy' OR department='Computers')And (Null != null))
Select * From employees where department IN('Clothing', 'Pharmacy' , 'Toys') And Salary Between 20000 AND 30000
Select * From employees where department IN('Clothing', 'Pharmacy' , 'Toys') OR Salary Between 20000 AND 30000
Select first_name,hire_date,salary From employees Where Salary Between 20000 AND 30000 OR((department = 'Sports'AND gender = 'M'))
Select first_name,hire_date,salary,department From employees Where Salary Between 20000 AND 30000 OR((department = 'Sports'AND gender = 'M'))
Select first_name,hire_date,salary,department From employees Where Salary Between 20000 AND 30000 OR((department = 'Sports'AND gender = 'M') And hire_date Between '2002-01-01'AND '2002-12-31')
Select first_name,hire_date,salary,department From employees Where Salary Between 20000 AND 30000 OR(department = 'Sports'AND (gender = 'M' Or gender = 'F') And hire_date Between '2002-01-01'AND '2002-12-31')
Select first_name,hire_date,salary,department From employees Where Salary Between 20000 AND 30000 OR(department = 'Sports'AND (gender = 'M' Or gender = 'F' And department = 'Toys') And hire_date Between '2002-01-01'AND '2002-12-31')
Select first_name,hire_date,salary,department From employees Where Salary Between 20000 AND 30000 OR(department = 'Sports'AND (gender = 'M' Or gender = 'F' And department = 'Toys') And hire_date Between '2002-01-01'AND '2002-12-31') Order By salary desc
Select first_name,hire_date,salary,department,region_id From employees Where Salary Between 20000 AND 30000 OR(department = 'Sports'AND (gender = 'M' Or gender = 'F' And department = 'Toys'And(region_id = 2 or region_id = 4)) And hire_date Between '2002-01-01'AND '2002-12-31')
Select first_name,hire_date,salary,department,region_id From employees Where Salary Between 20000 AND 30000 OR(department = 'Sports'AND (gender = 'M' Or gender = 'F' And department = 'Toys'And(region_id = 2 or region_id = 4)) And hire_date Between '2002-01-01'AND '2002-12-31') Order By salary asc
Select Distinct region_id From employees Order by 1 Fetch First 10 rows Only
Select first_name,hire_date,salary, department, Distinct (region_id) From employees Where Salary Between 20000 AND 30000 OR(department = 'Sports'AND (gender = 'M' Or gender = 'F' And department = 'Toys'And(region_id = 2 or region_id = 4)) And hire_date Between '2002-01-01'AND '2002-12-31') Order By salary asc
Select Length(first_name),hire_date,salary,Lower(department),region_id From employees Where Salary Between 20000 AND 30000 OR(department = 'Sports'AND (gender = 'M' Or gender = 'F' And department = 'Toys'And(region_id = 2 or region_id = 4)) And hire_date Between '2002-01-01'AND '2002-12-31') Order By salary asc
Select Trim(first_name || last_name),hire_date,salary,department,(region_id=2) is_region From employees Where Salary Between 20000 AND 30000 OR(department = 'Sports'AND (gender = 'M' Or gender = 'F' And department = 'Toys'And(region_id = 2 or region_id = 4)) And hire_date Between '2002-01-01'AND '2002-12-31') Order By salary asc
Select Trim(first_name || last_name),hire_date,salary,department, ('Clothing' IN (department,first_name)),(region_id=2) is_region From employees Where Salary Between 20000 AND 30000 OR(department = 'Sports'AND (gender = 'M' Or gender = 'F' And department = 'Toys'And(region_id = 2 or region_id = 4)) And hire_date Between '2002-01-01'AND '2002-12-31') Order By salary asc
Select Trim(first_name || last_name),hire_date,salary,department, ('Clothing' IN (department,first_name)), department, (department like '%oth%'),(region_id=2) is_region From employees Where Salary Between 20000 AND 30000 OR(department = 'Sports'AND (gender = 'M' Or gender = 'F' And department = 'Toys'And(region_id = 2 or region_id = 4)) And hire_date Between '2002-01-01'AND '2002-12-31') Order By salary asc
Select Substring('This is test data' From 9 For 4) test_Data
Select Substring('This is test data' From 9) test_Data
Select department, Replace(department, 'Clothing','Attire') mod_data From departments
Select department, Replace(Replace(department, 'Clothing','Attire'),'Attire','Colour') mod_data From departments
Select department, Replace(Replace(Replace(department, 'Clothing','Attire'),'Attire','Colour'),'Colour','Bright') mod_data From departments
Select department, Replace(Replace(Replace(department, 'Clothing','Attire'),'Attire','Colour'),'Colour','Bright') mod_data, departments || 'Depart' as "Com depart Name" From departments
Select department, Replace(department, 'Clothing','Attire') mod_data, department||' deposch' From departments
Select department, Replace(department, 'Clothing','Attire') mod_data, department || mod_data From departments
Select Position('@'IN email) From employees
Select Substring(email,Position('@'IN email)+1) From employees
Select Substring(Substring(email,Position('@'IN email))From 9 For 1000) From employees
Select Substring(Substring(email,Position('@'IN email))For 100000000) From employees
Select Substring(Substring(Substring(email,Position('@'IN email))For 100000000)From 9 For 2000) From employees
Select COALESCE(email,'none') as email From employees
Select COALESCE(email,'check') as email From employees
Select Substring(Substring(COALESCE(email,'check'),Position('@'IN email))From 9 For 1000) From employees
Select Substring(Substring(Substring(COALESCE(email,'NEW'),Position('@'IN email))For 100000000)From 1 For 2000) From employees
Select Substring(Substring(Substring(Position('@'IN email)),COALESCE(email,'NEW'))For 100000000)From 1 For 2000) From employees
Select COUNT(employee_id) FROM employees
Select COUNT(employee_id), Sum(salary) FROM employees
Select COUNT(employee_id), Sum(salary), Count(email) FROM employees
Select Sum(salary) From employees Where department = 'Toys'
Select Sum(salary) From employees where department= 'Clothing' And Salary>1000 Group by department
Select Sum(salary) From employees where department= 'Clothing' And (Salary>1000 Or region_id = 2 or gender = 'F') Group by department
Select Sum(salary) From employees where department= 'Clothing' And (region_id = 2 or gender = 'F') Group by department
Select Sum(salary) From employees where department= 'Clothing' And (department='Toys' or region_id = 2 or gender = 'F') Group by department
Select Sum(salary) From employees where department= 'Clothing' And (department='Toys' or department='Pharmacy' or region_id = 2 or gender = 'F') Group by department
Select department,Sum(salary) From employees where region_id in (4,5,6,7) Group by department
Select department,Sum(salary) From employees where region_id in (4,5,6,7) or department in('Pharmacy','Tools') Group by department
Select department,Count(*) From employees where region_id in (4,5,6,7) or department in('Pharmacy','Tools') Group by department
Select department,Count(*) total_employees, AVG(salary) Avg_salary From employees where region_id in (4,5,6,7) or department in('Pharmacy','Tools') Group by department
Select department,Count(*) total_employees, AVG(salary) Avg_salary, Min(salary) min_salary, Max(salary) max_salary From employees where region_id in (4,5,6,7) or department in('Pharmacy','Tools') Group by department
Select department,Count(*) total_employees, AVG(salary) Avg_salary, Min(salary) min_salary, Max(salary) max_salary From employees where region_id in (4,5,6,7) or department in('Pharmacy','Tools') Group by department Order by total_employees
Select department,Count(*) total_employees From employees where region_id in (4,5,6,7) or department in('Pharmacy','Tools') Group by department Order by total_employees
Select department,Count(*) total_employees From employees where region_id in (4,5,6,7) or department in('Pharmacy','Tools') And Salary Between 3000 And 10000 Group by department Order by total_employees
Select department,Count(*) total_employees From employees where region_id in (4,5,6,7) or department in('Pharmacy','Tools') And Salary Between 10000 And 100000 Group by department Order by total_employees
Select department,Count(*) total_employees From employees where region_id in (4,5,6,7) or department in('Pharmacy','Tools','Books','Grocery') And Salary Between 10000 And 100000 Group by department,gender Order by total_employees
Select department,Count(*) total_employees From employees where region_id in (4,5,6,7) or department in('Pharmacy','Tools','Books','Grocery') And Salary Between 10000 And 100000 Group by department,gender Order by total_employees
Select department,sum(salary) total_salary From employees where region_id in (4,5,6,7) or department in('Pharmacy','Tools','Books','Grocery') And Salary Between 10000 And 100000 Group by department,gender Order by total_salary
Select department,gender,sum(salary) total_salary From employees where region_id in (4,5,6,7) or department in('Pharmacy','Tools','Books','Grocery') And Salary Between 10000 And 100000 Group by department,gender Order by total_salary
Select department,gender,sum(salary) total_salary From employees where region_id in (4,5,6,7) or department in('Pharmacy','Tools','Books','Grocery') And Salary Between 10000 And 100000 Group by department,gender Order by total_salary
Select department,gender,sum(salary) total_salary From employees where region_id in (4,5,6,7) or department in('Pharmacy','Tools','Books','Grocery') And Salary Between 10000 And 100000 Group by department,gender Having sum(salary) > 30000 Order by total_salary
Select department,gender,Count(*) total_employees From employees where region_id in (4,5,6,7) or department in('Pharmacy','Tools','Books','Grocery') And Salary Between 10000 And 100000 Group by department,gender Having Count(*) > 30000 Order by total_employees
Select department,gender,Count(*) total_employees From employees where region_id in (4,5,6,7) or department in('Pharmacy','Tools','Books','Grocery') And Salary Between 10000 And 100000 Group by department,gender Having Count(*) > 2 Order by total_employees
Select department,gender,Count(*) total_employees From employees where region_id in (4,5,6,7) or department in('Pharmacy','Tools','Books','Grocery') And Salary Between 10000 And 100000 Group by department,gender Having Count(*) > 15 Order by total_employees
Select department,gender,Count(*) total_employees From employees where region_id in (4,5,6,7) or department in('Pharmacy','Tools','Books','Grocery') And Salary Between 10000 And 100000 Group by department,gender Having Count(*) Between 10 AND 16 Order by total_employees
Select department,gender,Count(*) total_employees From employees where region_id in (4,5,6,7) or department in('Pharmacy','Tools','Books','Grocery') And Salary Between 10000 And 100000 Group by department,gender Having Count(*) Between 5 AND 8 Order by total_employees
Select department,gender,Count(*) total_employees From employees where region_id in (4,5,6,7) or department in('Pharmacy','Tools','Books','Grocery') And Salary Between 10000 And 100000 Group by department,gender Having Count(*) Between 8 AND 12 Order by total_employees
Select first_name,Count(*) total_employees From employees where Salary Between 10000 And 100000 Group by first_name Order by total_employees
Select department,gender,first_name,Count(*) total_employees From employees where region_id in (4,5,6,7) or department in('Pharmacy','Tools','Books','Grocery') And Salary Between 10000 And 100000 Group by department,gender,first_name Having Count(*) Between 5 AND 8 Order by total_employees
Select department,gender,first_name,Count(*) total_employees From employees where region_id in (4,5,6,7) or department in('Pharmacy','Tools','Books','Grocery') And Salary Between 10000 And 100000 Group by department,gender,first_name Order by total_employees
Select department,gender,first_name,region_id,Count(*) total_employees From employees where department in('Pharmacy','Tools','Books','Grocery') And Salary Between 10000 And 100000 Group by department,gender,first_name,region_id Order by total_employees
Select department,gender,first_name,region_id,Count(*) total_employees From employees where department in('Pharmacy','Tools','Books','Grocery') Group by department,gender,first_name,region_id Order by total_employees
Select department,gender,first_name,region_id,Count(*) total_employees From employees Group by department,gender,first_name,region_id Order by total_employees
Select department From employees Group by department
Select Substring(email,Position('@'IN email)+1),Count(*) total_employees From employees Group by Substring(email,Position('@'IN email)+1) order by total_employees
Select Substring(email,Position('@'IN email)+1),Count(*) total_employees From employees Where email is Not NULL Group by Substring(email,Position('@'IN email)+1) order by Count(*) DESC
Select Substring(email,Position('@'IN email)+1) as email_domain,Count(*) total_employees From employees Where email is Not NULL Group by email_domain order by Count(*) DESC
Select gender,region_id,Count(*) total_employees, AVG(salary) Avg_salary, Min(salary) min_salary, Max(salary) max_salary From employees Group by gender,region_id Order by total_employees
Select department,gender,region_id,Count(*) total_employees, AVG(salary) Avg_salary, Min(salary) min_salary, Max(salary) max_salary From employees where region_id in (4,5,6,7) or department in('Pharmacy','Tools','Books','Grocery') And Salary Between 10000 And 100000 Group by department,gender,region_id Order by total_employees
Select first_name,last_name, * From departments,employees
Select departments.department, * From departments
Select departments.department, * From departments,employees
Select d.department, * From departments d,employees e
Select e.department, * From departments d,employees e
Select * From employees Where department Not In (Select department From departments)
Select * From (Select first_name name From employees Where salary>3000)
Select * From (Select first_name,hire_date,salary,department From employees Where Salary Between 20000 AND 30000 OR(department = 'Sports'AND (gender = 'M' Or gender = 'F' And department = 'Toys') And hire_date Between '2002-01-01'AND '2002-12-31'))
Select a.first_name,a.last_name From (Select * From employees where (department<> 'Clothing' OR department='Pharmacy' OR email = Null)) a
Select b.e___mail From (Select email e___mail From employees where (department<> 'Clothing' OR department='Pharmacy' OR Null = null)) b
Select c.hREDTE From (Select hire_date hREDTE From employees where (department<> 'Clothing' OR department='Pharmacy' And Null = null)) c
Select d.dept From (Select department dept From employees where (department<> 'Clothing' OR department='Pharmacy' And Null != null)) d
Select e.sal From (Select salary sal From employees where (department<> 'Clothing' OR department='Pharmacy' And email != null)) e
Select e.sal,g.employee_name From (Select salary sal From employees where (department<> 'Clothing' OR department='Pharmacy' And email != null)) e, (Select department employee_name From departments) g
Select e.sal,g.emmmail From (Select salary sal From employees where (department<> 'Clothing' OR department='Pharmacy' And email != null)) e, (Select department emmmail From departments) g
Select first_name, last_name, salary, (Select first_name From employees limit 1) From employees
Select * From employees Where department IN (Select department From departments Where division='Electronics')
Select * From employees Where department IN (Select department From departments Where division IN ('Electronics','Outdoors'))
Select * From employees Where department IN (Select department From departments Where division IN ('Electronics','Outdoors','Home'))
Select * From employees Where department IN (Select department From departments Where division Not IN ('Electronics','Outdoors','Home'))
Select * From employees Where department IN (Select department From departments Where division Not IN ('Electronics','Outdoors','Home') And region_id in (4,5,6,7) )
Select * From employees Where department IN (Select department From departments Where division Not IN ('Electronics','Outdoors','Home') And region_id in (4,5,6,7) And Salary Between 10000 And 100000)
Select * From employees Where department IN (Select department From departments Where division Not IN ('Electronics','Outdoors','Home') And region_id in (4,5,6,7) And Salary Between 10000 And 100000 or gender = 'F')
Select * From employees Where department IN (Select department From departments Where division Not IN ('Electronics','Outdoors','Home') And region_id In (Select region_id From regions Where country='Asia' Or country='Canada') And Salary Between 10000 And 100000 or gender = 'F')
Select * From employees Where department IN (Select department From departments Where division Not IN ('Electronics','Outdoors','Home') And region_id In (Select region_id From regions Where country In('Asia','Canada')) And Salary Between 10000 And 100000 or gender = 'F')
Select * From employees Where department IN (Select department From departments Where division Not IN ('Electronics','Outdoors','Home') And region_id In (Select region_id From regions Where country In ('Asia','Canada')) And Salary Between 10000 And 100000 or gender = 'F')
Select * From employees Where department IN (Select department From departments Where division Not IN ('Electronics','Outdoors','Home') And region_id In (Select region_id From regions Where country In ('Asia','Canada')) And Salary Between 10000 And 100000 or gender = 'F')
Select first_name,department, (Select Max(salary)From employees) - salary From employees Where region_id IN (Select region_id From regions Where country In ('Asia','Canada'))
Select first_name,department, (Select Max(salary)From employees) - salary From employees Where region_id IN (Select region_id From regions Where country In ('Asia','Canada') And Salary Between 10000 And 100000 or gender = 'F')
Select first_name,department, (Select Max(salary)From employees) - salary From employees Where region_id IN (Select region_id From regions Where country In ('Asia','Canada') And Salary Between 10000 And 100000 And gender = 'F')
Select first_name,department, salary, (Select Max(salary)From employees),(Select Max(salary)From employees) - salary From employees Where region_id IN (Select region_id From regions Where country In ('Asia','Canada') And Salary Between 10000 And 100000 And gender = 'F')
Select first_name,department, salary, (Select Max(salary)From employees),(Select Max(salary)From employees) - salary From employees Where region_id > Any (Select region_id From regions Where country In ('Asia','Canada') And Salary Between 10000 And 100000 And gender = 'F')
Select first_name,department, salary, (Select Max(salary)From employees),(Select Max(salary)From employees) - salary From employees Where region_id > All (Select region_id From regions Where country In ('Asia','Canada') And Salary Between 10000 And 100000 And gender = 'F')
Select first_name,department, salary, (Select Max(salary)From employees),(Select Max(salary)From employees) - salary From employees Where region_id < Any (Select region_id From regions Where country In ('Asia','Canada') And Salary Between 10000 And 100000 And gender = 'F')
Select first_name,department, salary, (Select Max(salary)From employees),(Select Max(salary)From employees) - salary From employees Where region_id < All (Select region_id From regions Where country In ('Asia','Canada') And Salary Between 10000 And 100000 And gender = 'F')
Select * From employees Where department = Any (select department From departments Where division='Kids') AND hire_date > (Select hire_date From employees Where department = 'Maintenance')
SELECT * FROM employees WHERE department = ANY (SELECT department FROM departments WHERE division = 'Kids')AND hire_date > (SELECT Max(hire_date)FROM employees WHERE department = 'Maintenance')
				
SELECT *
FROM employees
WHERE department = ANY (SELECT department
                       FROM departments
                       WHERE division = 'Kids')
AND hire_date > (SELECT hire_date
                FROM employees
                WHERE department = 'Maintenance'
                LIMIT 1)
				
SELECT *
FROM employees
WHERE department = ANY (SELECT department
                       FROM departments
                       WHERE division = 'Kids')
AND hire_date > All (SELECT hire_date
                FROM employees
                WHERE department = 'Maintenance'
                LIMIT 1)
				
SELECT *
FROM employees
WHERE department = ANY (SELECT department
                       FROM departments
                       WHERE division = 'Kids')
AND hire_date > All (SELECT Max(hire_date)
                FROM employees
                WHERE department = 'Maintenance')

SELECT salary, COUNT(*) AS count FROM employees GROUP BY salary ORDER BY count DESC LIMIT 1;
SELECT salary, COUNT(*) AS count FROM employees GROUP BY salary ORDER BY count;
SELECT salary, Max(salary), COUNT(*) AS count FROM employees GROUP BY salary ORDER BY count (*);
SELECT salary, Max(salary), COUNT(*) AS count FROM employees GROUP BY salary ORDER BY count (*) desc, salary desc Limit 1
Select salary from (SELECT salary, Max(salary), COUNT(*) AS count FROM employees GROUP BY salary ORDER BY count (*) desc, salary desc Limit 1) a
SELECT salary From employees Group By salary Having Count(*)>= All(Select count(*) From employees Group By salary ) Order By salary desc Limit 1


CREATE TABLE dupes (
  id INTEGER,
  name VARCHAR(10)
);

INSERT INTO dupes VALUES (1, 'FRANK');
INSERT INTO dupes VALUES (2, 'ROBERT');
INSERT INTO dupes VALUES (3, 'ROBERT');
INSERT INTO dupes VALUES (4, 'FRANK');
INSERT INTO dupes VALUES (5, 'SAM');
INSERT INTO dupes VALUES (6, 'FRANK');
INSERT INTO dupes VALUES (7, 'PETER')
select * From dupes
select min(ID),name From dupes Group by name
SELECT * From dupes WHERE ID In (SELECT min(ID),name From dupes Group by name)----Wrong!!!!
Select AVG(salary) From employees Where salary Not IN
((Select Min(salary) From employees),
(Select Max(salary) From employees))
Select AVG(salary) -((Max(salary)-Min(salary)) From employees --- Wrong!!!
SELECT first_name, salary,
CASE WHEN salary < 100000 THEN 'UNDER PAID'
     WHEN salary > 100000 THEN 'PAID WELL'
     ELSE 'UNPAID'
END AS salary_category
FROM employees
ORDER BY salary DESC;
SELECT first_name, salary,
CASE WHEN salary < 100000 THEN 'UNDER PAID'
     WHEN salary > 100000 THEN 'PAID WELL'
     ELSE 'UNPAID'
END AS salary_category
FROM employees Where department Not In('kids')
ORDER BY salary DESC;
SELECT first_name, salary,
CASE WHEN salary < 100000 THEN 'UNDER PAID'
     WHEN salary > 100000 THEN 'PAID WELL'
     ELSE 'UNPAID'
END AS salary_category
FROM employees Where department Not In('kids') Or gender='M' 
ORDER BY salary DESC;		
					 Select * from employees
SELECT first_name, salary,
CASE WHEN salary < 100000 THEN 'UNDER PAID'
     WHEN salary > 100000 THEN 'PAID WELL'
     ELSE 'UNPAID'
END AS salary_category
FROM employees Where department Not In('kids') Or gender='M' And hire_date Between '2002-01-01'AND '2002-12-31'
ORDER BY salary DESC;		
SELECT first_name, salary,
CASE WHEN salary < 100000 THEN 'UNDER PAID'
     WHEN salary > 100000 AND salary < 160000 THEN 'PAID WELL'
     ELSE 'EXECUTIVE'
END AS salary_category
FROM employees Where department Not In('kids') Or gender='M' And hire_date Between '2002-01-01'AND '2002-12-31'
ORDER BY salary DESC;	
SELECT first_name, salary,
CASE WHEN salary < 100000 THEN 'UNDER PAID'
     WHEN salary > 100000 AND salary < 160000 THEN 'PAID WELL'
     ELSE 'EXECUTIVE'
END AS salary_category
FROM employees Where department In('kids','Sports') Or gender='M' And hire_date Between '2002-01-01'AND '2002-12-31' And region_id In(4,7,3)
ORDER BY salary DESC;	
			select * From employees 
SELECT first_name, salary,
CASE WHEN salary < 100000 THEN 'UNDER PAID'
     WHEN salary > 100000 AND salary < 160000 THEN 'PAID WELL'
     When salary > 160000 Then 'Extreme and over paid'
					 ELSE 'Extra'
END AS salary_category
FROM employees Where department In('kids','Sports') Or gender='M' And hire_date Between '2002-01-01'AND '2002-12-31' And region_id In(4,7,3)
ORDER BY salary DESC;
(Select a.salary_category,Count(*) From (SELECT first_name, salary,
CASE WHEN salary < 100000 THEN 'UNDER PAID'
     WHEN salary > 100000 AND salary < 160000 THEN 'PAID WELL'
     ELSE 'EXECUTIVE'
END AS salary_category
FROM employees Where department In('kids','Sports') Or gender='M' And hire_date Between '2002-01-01'AND '2002-12-31' And region_id In(4,7,3)
ORDER BY salary DESC) a Group By a.salary_category Order By a.salary_category Desc) ;
Select a.salary_category,count(*) From (SELECT first_name, salary,
CASE WHEN salary < 100000 THEN 'UNDER PAID'
     WHEN salary > 100000 AND salary < 160000 THEN 'PAID WELL'
     When salary > 160000 Then 'Extreme and over paid'
					 ELSE 'Extra'
END AS salary_category
FROM employees Where department In('kids','Sports') Or gender='M' And hire_date Between '2002-01-01'AND '2002-12-31' And region_id In(4,7,3)
ORDER BY salary DESC) a Group by a.salary_category Order By a.salary_category Desc;
SELECT SUM(CASE WHEN salary < 100000 THEN 1 ELSE 0 End) as under_paid,
SUM(CASE WHEN salary > 100000 AND salary < 150000 THEN 1 ELSE 0 End) as paid_well,
SUM(CASE WHEN salary > 150000 THEN 1 ELSE 0 End) as executive
FROM employees
SELECT SUM(CASE WHEN salary < 100000 THEN 1 ELSE 0 End) as under_paid,
SUM(CASE WHEN salary > 100000 AND salary < 150000 THEN 1 ELSE 0 End) as paid_well,
SUM(CASE WHEN salary > 150000 THEN 1 ELSE 0 End) as executive
FROM employees Where department In('kids','Sports') Or gender='M' And hire_date Between '2002-01-01'AND '2002-12-31' And region_id In(4,7,3)

SELECT SUM (CASE WHEN department = 'Sports' THEN 1 ELSE 0 END) as Sports_Employees,
SUM (CASE WHEN department = 'Tools' THEN 1 ELSE 0 END) as Tools_Employees,
SUM (CASE WHEN department = 'Clothing' THEN 1 ELSE 0 END) as Clothing_Employees,
SUM(CASE WHEN department = 'Computers' THEN 1 ELSE 0 END) as Computers_Employees
FROM employees; 
					 
Select * From regions
					 
Select * From employees			 
					 
SELECT first_name,
CASE WHEN region_id IN (1, 2, 3, 4, 5, 6, 7) THEN (SELECT country FROM regions WHERE region_id = employees.region_id) END region
FROM employees	
					 
SELECT first_name,
  (CASE WHEN region_id = 1 THEN (SELECT country FROM regions WHERE region_id = 1) END) AS region_1,
  (CASE WHEN region_id = 2 THEN (SELECT country FROM regions WHERE region_id = 2) END) AS region_2,
  (CASE WHEN region_id = 3 THEN (SELECT country FROM regions WHERE region_id = 3) END) AS region_3,
  (CASE WHEN region_id = 4 THEN (SELECT country FROM regions WHERE region_id = 4) END) AS region_4,
  (CASE WHEN region_id = 5 THEN (SELECT country FROM regions WHERE region_id = 5) END) AS region_5,
  (CASE WHEN region_id = 6 THEN (SELECT country FROM regions WHERE region_id = 6) END) AS region_6,
  (CASE WHEN region_id = 7 THEN (SELECT country FROM regions WHERE region_id = 7) END) AS region_7
FROM employees;					 
					 
select count( case when region_id in (1,2,3) then 1 end) as "United States",
	   count( case when region_id in (4,5) then 1 end) as Asia ,
	   count( case when region_id in (6,7) then 1 end) as Canada 
					
from employees;					 
					 
select count(a.region_1)+count(a.region_2)+count(a.region_3) as "United States" , 
	   count(a.region_4)+count(a.region_5) as Asia  ,
	   count(a.region_6)+count(a.region_7) as Canada
from(					
select first_name , case when region_id=1 then (select country from regions where region_id=1 ) end as region_1,
					case when region_id=2 then (select country from regions where region_id=2 ) end as region_2,
					case when region_id=3 then (select country from regions where region_id=3 ) end as region_3,
					case when region_id=4 then (select country from regions where region_id=4 ) end  as region_4,
					case when region_id=5 then (select country from regions where region_id=5 ) end  as region_5,
					case when region_id=6 then (select country from regions where region_id=6 ) end  as region_6,
					case when region_id=7 then (select country from regions where region_id=7 ) end as region_7
					
					
from employees) a;					 
					 
					 
					 
					 
Select United_states +Asia+Canada From(					 
select count(a.region_1)+count(a.region_2)+count(a.region_3) as United_States, 
	   count(a.region_4)+count(a.region_5) as Asia,
	   count(a.region_6)+count(a.region_7) as Canada
from(					
select first_name , case when region_id=1 then (select country from regions where region_id=1 ) end as region_1,
					case when region_id=2 then (select country from regions where region_id=2 ) end as region_2,
					case when region_id=3 then (select country from regions where region_id=3 ) end as region_3,
					case when region_id=4 then (select country from regions where region_id=4 ) end  as region_4,
					case when region_id=5 then (select country from regions where region_id=5 ) end  as region_5,
					case when region_id=6 then (select country from regions where region_id=6 ) end  as region_6,
					case when region_id=7 then (select country from regions where region_id=7 ) end as region_7
					
					
from employees) a);				
					 
					 
SELECT SUM (CASE WHEN department = 'Sales' THEN 1 ELSE 0 END) as Sales_Employees,
SUM (CASE WHEN department = 'Marketing' THEN 1 ELSE 0 END) as Marketing_Employees,
SUM (CASE WHEN department = 'Engineering' THEN 1 ELSE 0 END) as Engineering_Employees,
SUM(CASE WHEN department = 'Customer Service' THEN 1 ELSE 0 END) as Customer_Service_Employees
FROM employees;					 

SELECT
  SUM(CASE WHEN region_id IN (1, 2, 3, 4, 5, 6, 7) THEN 1 ELSE 0 END) AS Total_Employees_Up_to_7,
  SUM(CASE WHEN region_id = 8 THEN 1 ELSE 0 END) AS Asia_Employees,
  SUM(CASE WHEN region_id = 9 THEN 1 ELSE 0 END) AS Canada_Employees
FROM employees;
					 
SELECT
  first_name,salary
FROM employees
WHERE salary > (SELECT ROUND(AVG(salary)---- error!!!! FROM employees);
				
				
SELECT
  first_name,
  salary
FROM employees
WHERE salary > (SELECT ROUND(AVG(salary)) FROM employees);				
							 
SELECT
  first_name,salary
FROM employees
WHERE salary > (SELECT ROUND(AVG(salary)) FROM employees);
							 
							 
select first_name, salary 
from employees e1
where salary >(select round(avg(salary)) from employees e2  where e1.department =e2.department group by department);	
							 
select first_name, salary 
from employees e1
where salary >(select round(avg(salary)) from employees e2  where e1.region_id =e2.region_id);		
							 
select first_name, salary,
(select round(avg(salary)) from employees e2  where e1.region_id =e2.region_id) 
from employees e1
	
select first_name, salary,
(select round(avg(salary)) from employees e2  where e1.department =e2.department) 
from employees e1
							 
select first_name, salary,department,
(select round(avg(salary)) from employees e2  where e1.region_id =e2.region_id) 
from employees e1

select first_name, salary,department
(select round(avg(salary)) from employees e2  where e1.department =e2.department) 
from employees e1							 

							 
select department, (select count(employee_id) from employees a where a.department =b.department)
from employees b
where (select count(employee_id) from employees a where a.department =b.department)  > 38
							 
select region_id, (select count(employee_id) from employees a where a.department =b.department)
from employees b
where (select count(employee_id) from employees a where a.department =b.department)  > 38	
							 
select gender, (select count(employee_id) from employees a where a.department =b.department)
from employees b
where (select count(employee_id) from employees a where a.department =b.department)  > 38
							 
select department, (select count(employee_id) from employees a where a.department =b.department)
from employees b
where (select count(employee_id) from employees a where a.department =b.department)  > 38; 
							 
select gender, (select count(employee_id) from employees a where a.department =b.department)
from employees b
where (select count(employee_id) from employees a where a.department =b.department)  > 38 
							 
SELECT distinct department FROM employees el WHERE 38 < (SELECT COUNT(*)  FROM employees e2 WHERE el.department = e2.department)			
							 
SELECT distinct department,gender, region_id
FROM employees el WHERE 38 < (SELECT COUNT(*)  FROM employees e2 WHERE el.department = e2.department)			 

--Making them distinct							 
SELECT gender
FROM employees el WHERE 38 < (SELECT COUNT(*)  FROM employees e2 WHERE el.department = e2.department) Group by gender	 

--Making them distinct
SELECT  region_id
FROM employees el WHERE 38 < (SELECT COUNT(*)  FROM employees e2 WHERE el.department = e2.department) Group by region_id	

--Making them distinct							 
SELECT department
FROM departments el WHERE 38 < (SELECT COUNT(*)  FROM employees e2 WHERE el.department = e2.department) Group by department

SELECT department, (SELECT MAX(salary) FROM employees WHERE department = d.department)
FROM departments d
WHERE 38 > (SELECT COUNT(*) 
            FROM employees e2
            WHERE d.department = e2.department) 
							 
SELECT department, (SELECT MAX(salary) FROM employees WHERE department = d.department)
FROM departments d
WHERE 38 > (SELECT COUNT(*) 
            FROM employees e2
            WHERE d.department = e2.department And gender='F')	
							 
SELECT department, (SELECT MAX(salary) FROM employees WHERE department = d.department)
FROM departments d
WHERE 38 > (SELECT COUNT(*) 
            FROM employees e2
            WHERE d.department = e2.department And gender='M')	
							 
select * from(
select 	department, first_name, 
					case when salary = (select Max(salary)from employees b where a.department= b.department)	then Max(salary)
					when salary = (select min(salary)from employees b where a.department= b.department)	then min(salary)
					end salary,
					
					case when salary = (select Max(salary)from employees b where a.department= b.department)	then 'highpaid'
					when salary = (select min(salary)from employees b where a.department= b.department)	then 'lowpaid'
					end salary_in_department
					
   from employees a
   group by 	department, first_name, salary)d
where salary is not null
group by department,d.first_name,d.salary,d.salary_in_department ;	
							 
select * from(
select 	department, first_name, 
					case when salary = (select Max(salary)from employees b where a.department= b.department)	then Max(salary)
					when salary = (select min(salary)from employees b where a.department= b.department)	then min(salary)
					end salary
					
					
   from employees a
   group by 	department, first_name, salary)d
where salary is not null
group by department,d.first_name,d.salary ;								 
							 
							 
							 
select * from(
select 	department, first_name, 
					case when salary = (select Max(salary)from employees b where a.department= b.department)	then Max(salary)
					when salary = (select min(salary)from employees b where a.department= b.department)	then min(salary)
					end salary,
					
					case when salary = (select Max(salary)from employees b where a.department= b.department)	then 'highpaid'
					when salary = (select min(salary)from employees b where a.department= b.department)	then 'lowpaid'
					end salary_in_department
					
   from employees a
   group by 	department, first_name, salary)d
where salary is not null
group by department,d.first_name,d.salary,d.salary_in_department ;	
							 
select * from(
select 	department, first_name,
					case when salary = (select Max(salary)from employees b where a.department= b.department)	then Max(salary)
					when salary = (select min(salary)from employees b where a.department= b.department)	then min(salary)
					end salary,
					
					case when salary = (select Max(salary)from employees b where a.department= b.department)	then 'highpaid'
					when salary = (select min(salary)from employees b where a.department= b.department)	then 'lowpaid'
					end salary_in_department
					
   from employees a
   group by 	department, first_name, salary)d
where salary is not null
group by department,d.first_name,d.salary,d.salary_in_department;								 

SELECT department, first_name, salary FROM (
    SELECT department, first_name, salary,
    (SELECT max(salary) FROM employees e2
     WHERE e1.department = e2.department) as max_by_department,
    (SELECT min(salary) FROM employees e2
     WHERE e1.department = e2.department) as min_by_department
FROM employees e1
ORDER BY department
) a
WHERE salary=max_by_department OR salary=min_by_department	
							 

SELECT department, first_name, salary,
    (SELECT max(salary) FROM employees e2
     WHERE e1.department = e2.department) as max_by_department,
    (SELECT min(salary) FROM employees e2
     WHERE e1.department = e2.department) as min_by_department
FROM employees e1
ORDER BY department
							 
SELECT department, first_name, salary,
    
    (SELECT min(salary) FROM employees e2
     WHERE e1.department = e2.department) as min_by_department
FROM employees e1
ORDER BY department
							 

SELECT department, first_name, salary, Case When salary = max_by_department then 'highest'
							 				When salary = min_by_department then 'lowest' end salary,
							 		Case When salary = max_by_department then 'highly paid'
							 				When salary = min_by_department then 'low paid' end classes
							 
FROM (
    SELECT department, first_name, salary,
    (SELECT max(salary) FROM employees e2
     WHERE e1.department = e2.department) as max_by_department,
    (SELECT min(salary) FROM employees e2
     WHERE e1.department = e2.department) as min_by_department
FROM employees e1 Where salary is not null
ORDER BY department
) a
WHERE salary=max_by_department OR salary=min_by_department	

SELECT department, first_name, salary, Case When salary = max_salary then 'highest'
							 				When salary = min_salary then 'lowest' end as salary
From(							 		
SELECT department, first_name, salary,
    
    (SELECT max(salary) FROM employees b
     WHERE a.department = b.department) as max_salary,
     
(SELECT min(salary) FROM employees b
     WHERE a.department = b.department) as min_salary FROM employees a order by department) K
							 
							 

SELECT department, first_name,salary, Case When salary = max_salary then 'highest'
							 				When salary = min_salary then 'lowest' end as salary
From(							 		
SELECT department, first_name,salary,
    
    (SELECT max(salary) FROM employees b
     WHERE a.department = b.department) as max_salary,
     
(SELECT min(salary) FROM employees b
     WHERE a.department = b.department) as min_salary FROM employees a ) K where salary=max_salary or salary=min_salary order by 4
						 

SELECT first_name, email, departments, division, country, gender,salary
FROM employees, departments, regions
WHERE employees.department = departments.department
AND employees.region_id = regions.region_id
AND email IS NOT NULL

SELECT salary, employees.department, division
FROM employees, departments, regions
WHERE employees.department = departments.department
AND employees.region_id = regions.region_id
AND email IS NOT NULL

SELECT salary, employees.department, division, regions.country,employees.region_id
FROM employees, departments, regions
WHERE employees.department = departments.department
AND employees.region_id = regions.region_id				 
AND email IS NOT NULL							 
							 
SELECT salary, employees.department, division, regions.country,employees.region_id, departments.division
FROM employees, departments, regions
WHERE employees.department = departments.department
AND employees.region_id = regions.region_id				 
AND email IS NOT NULL							 
							 
Select salary, d.division
From employees e, regions r, departments d
Where e.department = d.department
And e.region_id = r.region_id							 
							 
select email, gender							 
From employees, departments, regions							 
Where employees.department = departments.department							 
And employees.region_id= regions.region_id							 
And email is not null							 
							
SELECT first_name, email, employees.department, division, regions.country, gender,salary
FROM employees, departments, regions
WHERE employees.department = departments.department
AND employees.region_id = regions.region_id
AND email IS NOT NULL
							 
							 
SELECT first_name, email, employees.department, division, country, gender,salary
FROM employees, departments, regions
WHERE employees.department = departments.department
AND employees.region_id = regions.region_id
AND email IS NOT NULL
							 
SELECT first_name, email, e.department, division, country, gender,salary
FROM employees e, departments d, regions r
WHERE e.department = d.department
AND e.region_id = r.region_id
AND email IS NOT NULL	
							 
							 
							 
SELECT country, count(employee_id)
FROM employees e, regions r
WHERE e.region_id = r.region_id
Group by country

Select department, count (employee_id)							 
FROM employees, regions							 
Where employees.region_id = regions.region_id	
Group by department						 
					
Select division, count (employee_id)							 
FROM employees, regions, departments							 
Where employees.region_id = regions.region_id
And employees.department = departments.department							 
Group by division								 

Select gender, count (employee_id)							 
FROM employees, regions, departments							 
Where employees.region_id = regions.region_id
And employees.department = departments.department							 
Group by gender								 
							 
Select employees.region_id, count (employee_id)							 
FROM employees, regions, departments							 
Where employees.region_id = regions.region_id
And employees.department = departments.department							 
Group by employees.region_id						 

Select e.region_id, count (employee_id)							 
FROM (select * from employees) e, (select * from regions) r , (select * from departments) d							 
Where e.region_id = r.region_id
And e.department = d.department							 
And email is not null	
Group by e.region_id						 
						 

SELECT r.country, count(employee_id)
FROM (select * from employees) e, (select * from regions) r
WHERE e.region_id = r.region_id
And email is not null							 
Group by r.country
							 
							 
SELECT first_name, r.country
FROM employees e
INNER JOIN regions r ON e.region_id = r.region_id;		

SELECT country
FROM employees e
INNER JOIN regions r ON e.region_id = r.region_id;		

SELECT country,  e.region_id
FROM employees e, regions r
Where e.region_id = r.region_id;		
					 

SELECT first_name, email, d.division
FROM employees e
INNER JOIN departments d ON e.department = d.department
WHERE email IS NOT NULL;				
							 
SELECT Distinct(e.first_name), e.email, d.division, country
FROM employees e
INNER JOIN departments d ON e.department = d.department
INNER JOIN regions r ON e.region_id = r.region_id
WHERE email IS NOT NULL;
							 

SELECT distinct(e.first_name), e.email, d.division, country
FROM employees e
Right JOIN departments d ON e.department = d.department
INNER JOIN regions r ON e.region_id = r.region_id
WHERE email IS NOT NULL;

SELEct distinct(e.email), d.division, country
FROM employees e
Right JOIN departments d ON e.department = d.department
INNER JOIN regions r ON e.region_id = r.region_id
WHERE email IS NOT NULL;

							 
Select e.first_name, e.email, division, country, salary							 
FROM employees e							 
Left join departments d on e.department = d.department							 
Inner join regions r on e.region_id = r.region_id							 
Where salary between 100000 And 110000							 

Select e.first_name, e.email, division, country, salary, hire_date, gender						 
FROM employees e
Left join departments d on e.department = d.department
Inner join regions r on e.region_id = r.region_id							 
Where salary between 100000 And 110000 OR e.hire_date between '2006-01-01' And '2008-12-31'
							 
Select e.first_name, e.email, division, country, salary, hire_date, gender						 
FROM employees e
Left join departments d on e.department = d.department
Inner join regions r on e.region_id = r.region_id							 
Where salary between 100000 And 110000 OR e.hire_date between '2006-01-01' And '2008-12-31'							 
group by e.first_name, e.email, division, country, salary, hire_date, gender	 
							 
Select distinct(e.first_name), e.email, division, country, salary, hire_date, gender						 
FROM employees e
Left join departments d on e.department = d.department
Inner join regions r on e.region_id = r.region_id							 
Where salary between 100000 And 110000 OR e.hire_date between '2006-01-01' And '2008-12-31'	OR division='Entertainment'						 
And email is not null
group by distinct(e.first_name), e.email, division, country, salary, hire_date, gender
							 
Select distinct(e.first_name), e.email, division, country, salary, hire_date, gender						 
FROM employees e
Left join departments d on e.department = d.department
inner join regions r on e.region_id = r.region_id							 
Where salary between 100000 And 110000 OR e.hire_date between '2006-01-01' And '2008-12-31'	OR division in ('Fashion','Hardware')						 
And email is not null
group by distinct(e.first_name), e.email, division, country, salary, hire_date, gender							 
							 
							 
							 
							 
							 
SELECT e.first_name, e.email, division, country
FROM employees e
Left JOIN departments d ON e.department = d.department
INNER JOIN regions r ON e.region_id = r.region_id
WHERE division IS NULL;	
							 
SELECT first_name, email mail_id, division, country 
FROM employees e
Right JOIN departments d ON e.department = d.department
Right JOIN regions r ON e.region_id = r.region_id
WHERE email IS NULL;	
							 
SELECT distinct first_name, email, division, country 
FROM employees e
Right JOIN departments d ON e.department = d.department
Right JOIN regions r ON e.region_id = r.region_id
WHERE email IS NULL;								 

SELECT distinct first_name, email, division, country 
FROM employees e
Right JOIN departments d ON e.department = d.department
Right JOIN regions r ON e.region_id = r.region_id
WHERE email IS NULL;
							 
SELECT distinct first_name, email, division, country,salary 
FROM employees e
Right Join departments d On e.department = d.department
Right Join regions r on e.region_id = r.region_id							 
Where email is not null and salary>100000	order by salary	Limit 10	 

SELECT distinct first_name, email, division, country,salary, gender
FROM employees e
Right Join departments d On e.department = d.department
Right Join regions r on e.region_id = r.region_id							 
Where email is not null and salary>100000	OR gender = 'f' order by salary	Limit 10	 

							 
SELECT distinct first_name, email, division, country,salary, gender
FROM employees e
Right Join departments d On e.department = d.department
Right Join regions r on e.region_id = r.region_id							 
Where email is not null OR salary>100000	And gender = 'f' order by salary	Limit 100							 
							 
SELECT distinct first_name, email, division, country,salary, gender
FROM employees e
Right Join departments d On e.department = d.department
Right Join regions r on e.region_id = r.region_id							 
Where email is not null And salary>100000	And gender = 'M' And division='Health' order by salary	Limit 100
							 
SELECT distinct first_name, email, division, country,salary, gender
FROM employees e
Right Join departments d On e.department = d.department
Right Join regions r on e.region_id = r.region_id							 
Where email is not null And salary>100000	And gender = 'M' And division='Health' And Country In ('Canada','United States')
							 order by salary	Limit 100							 
							 
SELECT distinct first_name, email, division, country,salary, gender
FROM employees e
Right Join departments d On e.department = d.department
Right Join regions r on e.region_id = r.region_id							 
Where email is not null And salary>100000	And gender = 'F' And division='Health' And Country In ('Canada','United States')
							 order by salary	Limit 100							 
							 
SELECT distinct first_name, email, division, country 
FROM employees e
Right JOIN departments d ON e.department = d.department
Full outer JOIN regions r ON e.region_id = r.region_id
WHERE email IS NULL;
							 
SELECT distinct first_name, email, division, country 
FROM employees e
Full JOIN departments d ON e.department = d.department
Full outer JOIN regions r ON e.region_id = r.region_id
WHERE division IS NULL;		
							 
SELECT distinct department
FROM employees
UNION ALL
SELECT department
FROM departments;							 

SELECT distinct department, first_name
FROM employees
UNION ALL
SELECT department, division
FROM departments order by department						 

							 
SELECT distinct department
FROM employees
UNION ALL
SELECT department
FROM departments;							 
SELECT distinct department, first_name
FROM employees
UNION ALL
SELECT department, division
FROM departments order by first_name
							 
							 
SELECT distinct department
FROM employees
UNION ALL
SELECT department
FROM departments;							 
SELECT distinct department, first_name
FROM employees
UNION ALL
SELECT department, division
FROM departments order by department							 

							 
SELECT distinct department
FROM employees
Except
SELECT department
FROM departments;							 
SELECT distinct department, first_name
FROM employees
Except
SELECT department, division
FROM departments order by department							 
							 
SELECT distinct department
FROM employees
Except
SELECT department
FROM departments;							 
SELECT distinct department, first_name
FROM employees
Except
SELECT department, division
FROM departments order by first_name
							 
							 
SELECT distinct department
FROM employees
Except
SELECT department
FROM departments;							 
SELECT distinct department, first_name
FROM employees
Union
SELECT department, division
FROM departments order by first_name
							 
Select department, max(salary) From employees  group by department	
							 
Select count(*) From (Select * from employees a, employees b) sub	
Select count(*) From (Select * from employees a, employees b, departments) sub								 

Select * from  (employees Cross Join employees b) sub	

Select first_name, department, hire_date, country

							 
SELECT first_name, department, hire_date, country
FROM employees emp INNER JOIN regions rgn
ON emp.region_id = rgn.region_id
WHERE hire_date = (SELECT MIN(hire_date) FROM employees emp2)

SELECT first_name, department, hire_date, country
FROM employees emp INNER JOIN regions rgn
ON emp.region_id = rgn.region_id
WHERE hire_date = (SELECT MAX(hire_date) FROM employees emp2)
							 
SELECT first_name, department, hire_date, country
FROM employees emp INNER JOIN regions rgn
ON emp.region_id = rgn.region_id
WHERE hire_date = (SELECT MIN(hire_date) FROM employees emp2)
Union
SELECT first_name, department, hire_date, country
FROM employees emp INNER JOIN regions rgn
ON emp.region_id = rgn.region_id
WHERE hire_date = (SELECT MAX(hire_date) FROM employees emp2)
							 
SELECT first_name, department, hire_date, country
FROM employees emp INNER JOIN regions rgn
ON emp.region_id = rgn.region_id
WHERE hire_date = (SELECT MIN(hire_date) FROM employees emp2)
Union All
SELECT first_name, department, hire_date, country
FROM employees emp INNER JOIN regions rgn
ON emp.region_id = rgn.region_id
WHERE hire_date = (SELECT MAX(hire_date) FROM employees emp2)							 
						 
							 
SELECT first_name, department, hire_date, country
FROM employees emp INNER JOIN regions rgn
ON emp.region_id = rgn.region_id
WHERE hire_date = (SELECT MIN(hire_date) FROM employees emp2)
Union
SELECT first_name, department, hire_date, country
FROM employees emp INNER JOIN regions rgn
ON emp.region_id = rgn.region_id
WHERE hire_date = (SELECT MAX(hire_date) FROM employees emp2)
Order by hire_date	
Limit 2							 
							 

(SELECT first_name, department, hire_date, country
FROM employees emp INNER JOIN regions rgn
ON emp.region_id = rgn.region_id
WHERE hire_date = (SELECT MIN(hire_date) FROM employees emp2) Limit 1)
Union
SELECT first_name, department, hire_date, country
FROM employees emp INNER JOIN regions rgn
ON emp.region_id = rgn.region_id
WHERE hire_date = (SELECT MAX(hire_date) FROM employees emp2)
Order by hire_date	
							 
							 
Select first_name, hire_date, hire_date + 90 from employees							 
Where hire_date Between hire_date And hire_date - 90 	
							 
SELECT hire_date, salary,
(SELECT SUM(salary) FROM employees e2
WHERE e2.hire_date BETWEEN e.hire_date - 90 AND e.hire_date) as spending_pattern
FROM employees e
ORDER BY hire_date Limit 20
							 
SELECT hire_date, salary,
(SELECT SUM(salary) FROM employees e2
WHERE e2.hire_date BETWEEN e.hire_date - 90 AND e.hire_date) as spending_pattern
FROM employees e
ORDER BY salary limit 10			
							 
							 
CREATE VIEW v_employee_information as
SELECT first_name, email, e.department, salary, division, region, country
FROM employees e, departments d, regions r
WHERE e.department = d.department
AND e.region_id = r.region_id							 
							 
Select * From v_employee_information					 
							 
							 
SELECT first_name, department,
(SELECT COUNT(*) FROM employees a WHERE a.department = b.department)
FROM employees b
GROUP BY department, first_name			
							 
-- Wrong!!!
SELECT first_name, department,
Count(*) Over((SELECT COUNT(*) FROM employees a WHERE a.department = b.department))
FROM employees b
				
--Over partition by is same as group by							 
SELECT first_name, department,
Count(*) Over(partition by (department))
FROM employees b

SELECT first_name, e.department, e.region_id,
Count(*) Over(partition by (e.department,r.region_id))
FROM employees e, departments d, regions r
WHERE e.department = d.department
AND e.region_id = r.region_id							 
							 
SELECT first_name, e.department, e.region_id,r.country,
Count(*) Over(partition by (e.department,r.region_id))
FROM employees e, departments d, regions r
WHERE e.department = d.department
AND e.region_id = r.region_id							 

SELECT first_name, e.department, e.region_id,r.country,
Count(*) Over(partition by (e.department,r.region_id))
FROM employees e
Inner join departments d on e.department = d.department
Inner join  regions r on e.region_id = r.region_id							 
							 
SELECT first_name, e.department, e.region_id,r.country,
Count(*) Over(partition by (e.department))
FROM employees e
Inner join departments d on e.department = d.department
Inner join  regions r on e.region_id = r.region_id							 
Group by first_name, e.department, e.region_id,r.country							 

SELECT first_name, e.department, e.region_id,r.country,email,
Count(*) Over(partition by (e.department))
FROM employees e
Inner join departments d on e.department = d.department
Inner join  regions r on e.region_id = r.region_id							 
Group by first_name, e.department, e.region_id,r.country, email							 
							 
SELECT first_name, e.department, e.region_id,r.country,email,salary,
Count(*) Over(partition by (e.department))
FROM employees e
Inner join departments d on e.department = d.department
Inner join  regions r on e.region_id = r.region_id
Where salary between 100000 And 150000							 
Group by first_name, e.department, e.region_id,r.country, email,salary	
							 
SELECT first_name, e.department, e.region_id,r.country,email,salary,
Count(*) Over(partition by (e.department))
FROM employees e
Inner join departments d on e.department = d.department
Inner join  regions r on e.region_id = r.region_id
Where salary between 100000 And 150000							 
Group by first_name, e.department, e.region_id,r.country, email,salary	 order by salary desc limit 5							 

-- this will no work because partition by clause has no department clause
SELECT first_name, department, 
SUM(salary) over() FROM employees e						 
Inner join departments d on e.department = d.department
Inner join  regions r on e.region_id = r.region_id	
Group by first_name,department							 
							 
-- this will no work because partition by clause has no department clause
SELECT first_name, department, 
Count(*) over() FROM employees e						 
Inner join departments d on e.department = d.department
Inner join  regions r on e.region_id = r.region_id	
Group by first_name,department							 
							 
SELECT first_name, e.department, e.region_id,r.country,email,salary,e.employee_id,
Count(*) Over(partition by e.department) dept_count,
Count(*) Over(partition by e.employee_id) id_count
FROM employees e
Inner join departments d on e.department = d.department
Inner join  regions r on e.region_id = r.region_id
Where salary between 100000 And 150000							 
Group by first_name, e.department, e.region_id,r.country, email,salary,e.employee_id	 order by salary desc limit 5							 
							 
SELECT first_name, e.department, e.region_id,r.country,email,salary,e.employee_id,
Count(*) Over(partition by e.salary) dept_count,
Count(*) Over(partition by e.region_id) id_count
FROM employees e
Inner join departments d on e.department = d.department
Inner join  regions r on e.region_id = r.region_id
Where salary between 100000 And 150000							 
Group by first_name, e.department, e.region_id,r.country, email,salary,e.employee_id	 order by salary desc limit 5							 

							 
SELECT first_name, e.department, e.region_id,r.country,email,salary,e.employee_id,
Count(*) Over(partition by e.first_name) dept_count,
Count(*) Over(partition by e.salary) id_count
FROM employees e
Inner join departments d on e.department = d.department
Inner join  regions r on e.region_id = r.region_id
Where salary between 100000 And 150000							 
Group by first_name, e.department, e.region_id,r.country, email,salary,e.employee_id	 order by salary desc limit 5							 

SELECT first_name, e.department, e.region_id,r.country,d.division,email,salary,e.employee_id,
Count(*) Over(partition by e.first_name) dept_count,
Count(*) Over(partition by e.salary) id_count
FROM employees e
Inner join departments d on e.department = d.department
Inner join  regions r on e.region_id = r.region_id
Where salary between 100000 And 150000							 
Group by first_name, e.department, e.region_id,r.country, d.division,email,salary,e.employee_id	 order by salary desc limit 5							 
							 

SELECT first_name, e.department, e.region_id,r.country,d.division,email,salary,e.employee_id,
Count(*) Over(partition by e.first_name) dept_count,
Count(*) Over(partition by d.division) div_count,							 
Count(*) Over(partition by e.salary) id_count
FROM employees e
Inner join departments d on e.department = d.department
Inner join  regions r on e.region_id = r.region_id
Where salary between 100000 And 150000							 
Group by first_name, e.department, e.region_id,r.country, d.division,email,salary,e.employee_id	 order by salary desc limit 5							 
							 
SELECT first_name, e.department, e.region_id,r.country,d.division,email,salary,e.employee_id,
Count(*) Over(partition by e.first_name) dept_count,
Count(*) Over(partition by d.division) div_count,
Count(*) over(partition by r.country) country_count,							 
Count(*) Over(partition by e.salary) id_count
FROM employees e
Inner join departments d on e.department = d.department
Inner join  regions r on e.region_id = r.region_id
Where salary between 100000 And 150000							 
Group by first_name, e.department, e.region_id,r.country, d.division,email,salary,e.employee_id	 order by salary desc limit 5							 
							 
SELECT first_name, e.department, e.employee_id,
Count(*) Over(partition by e.first_name) dept_count,
Count(*) Over(partition by d.division) div_count,
Count(*) over(partition by r.country) country_count,							 
Count(*) Over(partition by e.salary) id_count,e.region_id,r.country,d.division,email,salary
FROM employees e
Inner join departments d on e.department = d.department
Inner join  regions r on e.region_id = r.region_id
Where salary between 100000 And 150000							 
Group by first_name, e.department, e.region_id,r.country, d.division,email,salary,e.employee_id	 order by salary desc limit 5							 
							 
							 
-- Except is like match function in excel							 
(SELECT first_name, department,
(SELECT COUNT(*) FROM employees a WHERE a.department = b.department)
FROM employees b
GROUP BY department, first_name) 
Except
SELECT first_name, department,
Count(*) Over(partition by (department))
FROM employees b
							 
SELECT first_name, department, SUM(salary) OVER(partition by(first_name)) FROM employees e2	Limit 10						 

SELECT first_name, department, Avg(salary) OVER(partition by(region_id)) FROM employees e2	Limit 30						 

SELECT first_name, department, Max(salary) OVER(partition by(department)) FROM employees e2	Limit 100
							 
SELECT first_name, department, 
Count(*) OVER(partition by department) dep_count, 
Count(*) OVER(partition by first_name) first_name_count	"," --  comma here is wrong!!!!!"					 
FROM employees e2
							 
SELECT first_name, department,
COUNT(*) OVER(PARTITION BY department) dept_count, region_id,
Avg (salary) OVER(PARTITION BY region_id) region_count
FROM employees a Limit 30							 
							 
SELECT first_name, department,
COUNT(*) OVER(PARTITION BY department) dept_count,
Max(salary) OVER(PARTITION BY region_id) region_count, hire_date
FROM employees b Limit 100		
							 
-- Results of this query is wrong becase Where clause runs come ahead of window function runs			
SELECT first_name, department --"," This comma need to be removed!!" --count(*) over ()
FROM employees
WHERE region_id = 3
							 
							 
SELECT first_name, hire_date, salary,
SUM(salary) OVER(ORDER BY hire_date RANGE BETWEEN UNBOUNDED PRECEDING
AND CURRENT ROW) as running_total_of_salaries
FROM employees	
							 
SELECT first_name, hire_date, salary,
SUM(salary) OVER(ORDER BY first_name RANGE BETWEEN UNBOUNDED PRECEDING
AND CURRENT ROW) as running_total_of_salaries
FROM employees
							 
SELECT first_name, hire_date, salary, region_id, -- commas are needed in this line
SUM(salary) OVER(ORDER BY region_id RANGE BETWEEN UNBOUNDED PRECEDING
AND CURRENT ROW) as running_total_of_salaries
FROM employees							 
							 

SELECT first_name, hire_date, salary, region_id, 
Max(salary) OVER(ORDER BY hire_date RANGE BETWEEN UNBOUNDED PRECEDING
AND CURRENT ROW) as running_total_of_salaries
FROM employees							 
							 
SELECT first_name, hire_date, salary, region_id, 
Max(salary) OVER(ORDER BY first_name RANGE BETWEEN UNBOUNDED PRECEDING
AND CURRENT ROW) as running_total_of_salaries
FROM employees							 

SELECT first_name, hire_date, salary, region_id, 
Min(salary) OVER(ORDER BY first_name RANGE BETWEEN UNBOUNDED PRECEDING
AND CURRENT ROW) as running_total_of_salaries
FROM employees	
							 
SELECT first_name, hire_date, salary, region_id, 
Avg(salary) OVER(ORDER BY region_id RANGE BETWEEN UNBOUNDED PRECEDING
AND CURRENT ROW) as running_total_of_salaries
FROM employees							 
							 
SELECT first_name, hire_date, salary, region_id, department,
Avg(salary) OVER(Partition BY region_id Order by hire_date) as running_total_of_salaries
FROM employees
							 
SELECT first_name, hire_date, salary, region_id, department,
sum(salary) OVER(Partition BY department Order by hire_date) as running_total_of_salaries
FROM employees
							 
SELECT first_name, hire_date, salary, region_id, department,
sum(salary) OVER(Partition BY first_name Order by hire_date) as running_total_of_salaries
FROM employees							 
							 
SELECT first_name, hire_date, salary, region_id, department,
Min(salary) OVER(Partition BY first_name Order by hire_date) as Min_salaries
FROM employees
							 
SELECT first_name, hire_date, salary, region_id, department,
Max(salary) OVER(Partition BY first_name Order by hire_date) as Max_salaries
FROM employees			
							 
SELECT first_name, hire_date, department, salary,
SUM(salary) OVER(ORDER BY hire_date ROWS BETWEEN 1 PRECEDING
AND CURRENT ROW)
FROM employees							 
				
SELECT first_name, hire_date, department, salary,
SUM(salary) OVER(ORDER BY hire_date ROWS BETWEEN 1 PRECEDING
AND CURRENT ROW)
FROM employees
							 
SELECT first_name, hire_date, department, salary,
SUM(salary) OVER(ORDER BY hire_date ROWS BETWEEN 1000 PRECEDING
AND CURRENT ROW)
FROM employees			
							 

SELECT first_name, email, department, salary,
RANK() OVER(PARTITION BY department ORDER BY salary DESC)
FROM employees
			
Select * from (SELECT first_name, email, department, salary,
RANK() OVER(PARTITION BY department ORDER BY salary DESC)
FROM employees) a Where Rank in (1,2,3)
							 
Select * from (SELECT first_name, email, department, salary, hire_date,
RANK() OVER(PARTITION BY department ORDER BY salary DESC)
FROM employees) a Where Rank in (10,11,12) Limit 5							 

Select * from (SELECT first_name, email, department, salary, hire_date, region_id,
RANK() OVER(PARTITION BY department ORDER BY salary DESC)
FROM employees) a Where Rank in (10,11,12) or region_id in (1,2,3) Limit 5	
							 
Select * from (SELECT first_name, email, department, salary, hire_date, region_id,
RANK() OVER(PARTITION BY department ORDER BY salary DESC)
FROM employees) a Where Rank in (10,11,12) or region_id in (1,2,3) Limit 5
							 
Select * from (SELECT first_name, email, department, salary, hire_date, region_id,
Ntile(2) OVER(PARTITION BY department ORDER BY salary DESC) salary_bracket
FROM employees) a where region_id in (1,2,3) Limit 30			 
							 

SELECT first_name, email, department, salary,
MAX(salary) OVER(PARTITION BY department ORDER BY hire_date DESC) first_value
FROM employees

EXCEPT

SELECT first_name, email, department, salary,
FIRST_VALUE(salary) OVER(PARTITION BY department ORDER BY salary DESC) first_value
FROM employees		
							 

SELECT first_name, email, department, salary,
MAX(salary) OVER(PARTITION BY department ORDER BY first_name DESC) first_value
FROM employees

EXCEPT

SELECT first_name, email, department, salary,
FIRST_VALUE(salary) OVER(PARTITION BY department ORDER BY salary DESC) first_value
FROM employees	
							 
SELECT first_name, email, department, salary,
Avg(salary) OVER(PARTITION BY department ORDER BY first_name DESC) first_value
FROM employees

EXCEPT

SELECT first_name, email, department, salary,
FIRST_VALUE(salary) OVER(PARTITION BY department ORDER BY salary DESC) first_value
FROM employees	
							 
SELECT first_name, email, department, salary,
Avg(salary) OVER(PARTITION BY department ORDER BY first_name DESC) first_value
FROM employees

EXCEPT

SELECT first_name, email, department, salary,
nth_value(salary,5) OVER(PARTITION BY department ORDER BY salary DESC) first_value
FROM employees	limit 30
							 
	
SELECT first_name, department, salary,
Avg(salary) OVER(PARTITION BY department ORDER BY first_name DESC) first_value
FROM employees

EXCEPT

SELECT first_name, department, salary,
nth_value(salary,3) OVER(PARTITION BY department ORDER BY salary DESC) first_value
FROM employees	limit 30	
							 
							 
SELECT department, last_name, salary,
LAG(salary) OVER (ORDER BY salary desc) closest_higher_salary
FROM employees where region_id in (1,2,3)
							 
SELECT department, last_name, salary,hire_date,
LAG(salary) OVER (ORDER BY hire_date desc) closest_higher_salary
FROM employees where region_id in (1,2,3)
							 
SELECT department, last_name, salary,hire_date,
LAG(salary) OVER (partition by department ORDER BY hire_date desc) closest_higher_salary
FROM employees where region_id in (1,2,3)
							 
SELECT department, last_name, salary,hire_date,
LAG(salary) OVER (partition by department ORDER BY hire_date desc) closest_higher_salary
FROM employees where region_id in (1,2,3) limit 100	
							 
SELECT 
    department, 
    last_name, 
    salary, 
    hire_date,
    LAG(salary) OVER (PARTITION BY department ORDER BY hire_date DESC) AS closest_higher_salary
FROM 
    employees 
WHERE 
    region_id IN (1, 2, 3) OR hire_date BETWEEN '2016-01-01' AND '2016-12-31' 
LIMIT 100;	
							 

							 
SELECT 
    department, last_name, salary, hire_date,
    LAG(salary) OVER (PARTITION BY department ORDER BY hire_date DESC) AS closest_higher_salary
FROM employees 
WHERE region_id IN (1, 2, 3) OR hire_date BETWEEN '2016-01-01' AND '2016-12-31' And salary>10000 
LIMIT 100;	
							 
SELECT 
    department, last_name, salary, hire_date,
    LAG(salary) OVER (PARTITION BY department ORDER BY hire_date DESC) AS closest_higher_salary
FROM employees 
WHERE region_id IN (1, 2, 3) OR hire_date BETWEEN '2016-01-01' AND '2016-12-31' And salary>10000 And department ='beauty'
LIMIT 100;
							 
SELECT 
    department, last_name, salary, hire_date,
    LAG(salary) OVER (ORDER BY hire_date DESC) AS closest_higher_salary
FROM employees 
WHERE region_id IN (1, 2, 3) OR hire_date BETWEEN '2016-01-01' AND '2016-12-31' And salary>10000 And department ='beauty'
LIMIT 100;
							 
CREATE TABLE sales
(
	continent varchar(20),
	country varchar(20),
	city varchar(20),
	units_sold integer
);

INSERT INTO sales VALUES ('North America', 'Canada', 'Toronto', 10000);
INSERT INTO sales VALUES ('North America', 'Canada', 'Montreal', 5000);
INSERT INTO sales VALUES ('North America', 'Canada', 'Vancouver', 15000);
INSERT INTO sales VALUES ('Asia', 'China', 'Hong Kong', 7000);
INSERT INTO sales VALUES ('Asia', 'China', 'Shanghai', 3000);
INSERT INTO sales VALUES ('Asia', 'Japan', 'Tokyo', 5000);
INSERT INTO sales VALUES ('Europe', 'UK', 'London', 6000);
INSERT INTO sales VALUES ('Europe', 'UK', 'Manchester', 12000);
INSERT INTO sales VALUES ('Europe', 'France', 'Paris', 5000);
		
							 Select * from sales
							 
SELECT continent, country, city, sum(units_sold)
FROM sales
GROUP BY GROUPING SETS(continent, country, city)	
							 
SELECT continent, country, city, sum(units_sold)
FROM sales
GROUP BY GROUPING SETS(continent, country, city) Limit 2		
							 
SELECT continent, country, city, sum(units_sold)
FROM sales Where units_sold>10000
GROUP BY GROUPING SETS(continent, country, city)
							 
SELECT continent, country, city, sum(units_sold)
FROM sales Where units_sold>10000
GROUP BY GROUPING SETS(continent, country, city,())		
							 
SELECT continent, country, city, sum(units_sold)
FROM sales Where units_sold>10000
GROUP BY GROUPING SETS(continent, country, city)
							 
SELECT continent, country, city, sum(units_sold)
FROM sales Where units_sold>10000
GROUP BY RollUp(continent, country, city)	
							 
SELECT continent, country, city, sum(units_sold)
FROM sales Where units_sold>10000
GROUP BY Cube(continent, country, city)								 
							 

SELECT department, first_name,salary, Case When salary = max_salary then 'highest'
							 				When salary = min_salary then 'lowest' end as salary
From(							 		
SELECT department, first_name,salary,
    
    (SELECT max(salary) FROM employees b
     WHERE a.department = b.department) as max_salary,
     
(SELECT min(salary) FROM employees b
     WHERE a.department = b.department) as min_salary FROM employees a ) K where salary=max_salary or salary=min_salary order by 4


SELECT department, 
       first_name,
       salary,
       CASE WHEN salary = max_salary THEN 'highest'
            WHEN salary = min_salary THEN 'lowest'
       END AS salary_type
FROM (
    SELECT e.department, 
           e.first_name, 
           e.salary,
           (SELECT MAX(salary) FROM employees b WHERE e.department = b.department) as max_salary,
           (SELECT MIN(salary) FROM employees b WHERE e.department = b.department) as min_salary
    FROM employees e
) AS employee_details;
						
							 
SELECT department, email,
       first_name,
       salary,
       CASE WHEN salary = max_salary THEN 'highest'
            WHEN salary = min_salary THEN 'lowest'
       END AS salary_type
FROM (
    SELECT e.department,email,
           e.first_name, 
           e.salary,
           (SELECT MAX(salary) FROM employees b WHERE e.department = b.department) as max_salary,
           (SELECT MIN(salary) FROM employees b WHERE e.department = b.department) as min_salary
    FROM employees e
) AS employee_details where email is not null;	
							 
							 
							 
SELECT department, email,
       distinct(first_name),
       salary,
       CASE WHEN salary = max_salary THEN 'highest'
            WHEN salary = min_salary THEN 'lowest'
       END AS salary_type
FROM (
    SELECT e.department,email,
           distinct(e.first_name), 
           e.salary,
           (SELECT MAX(salary) FROM employees b WHERE e.department = b.department) as max_salary,
           (SELECT MIN(salary) FROM employees b WHERE e.department = b.department) as min_salary
    FROM employees e
) AS employee_details where email is not null;
							 
						
SELECT department,
       email,
       first_name,
       salary,
       CASE WHEN salary = max_salary THEN 'highest'
            WHEN salary = min_salary THEN 'lowest'
       END AS salary_type
FROM (
    SELECT department,
           email,
           first_name,
           salary,
           ROW_NUMBER() OVER (PARTITION BY department, first_name ORDER BY salary) AS row_num,
           (SELECT MAX(salary) FROM employees b WHERE e.department = b.department) as max_salary,
           (SELECT MIN(salary) FROM employees b WHERE e.department = b.department) as min_salary
    FROM employees e
) AS employee_details 
WHERE row_num = 1 AND email IS NOT NULL;							 
							 
SELECT department,
       email,
       first_name,
       salary,
       CASE WHEN salary = max_salary THEN 'highest'
            WHEN salary = min_salary THEN 'lowest'
       END AS salary_type
FROM (
    SELECT department,
           email,
           first_name,
           salary,
           ROW_NUMBER() OVER (PARTITION BY department, first_name ORDER BY First_name) AS row_num,
           (SELECT MAX(salary) FROM employees b WHERE e.department = b.department) as max_salary,
           (SELECT MIN(salary) FROM employees b WHERE e.department = b.department) as min_salary
    FROM employees e
) AS employee_details 
WHERE row_num = 1 AND salary IS NOT NULL And email is not null							 
							 
SELECT department,
       email,
       first_name,
		gender,					 
       salary,
       CASE WHEN gender = 'M' And department = 'clothing' THEN 'highest' 
            else 'lowest'
       END AS salary_type
							 From employees
							 
SELECT department,hire_date
       email,
       first_name,
		gender,					 
       salary,
       CASE WHEN gender = 'M' And department = 'clothing' And hire_date between '2008-01-01' and '2010-01-01'THEN 'highest' 
            else 'lowest'
       END AS salary_type
From employees	
							 
SELECT department,hire_date
       email,department,
       first_name,
		gender,					 
       salary,
       CASE WHEN gender = 'M' And department = 'clothing' And department = 'sports' And hire_date between '2008-01-01' and '2010-01-01'THEN 'highest' 
            else 'lowest'
       END AS salary_type
From employees								 
							 
SELECT department, email,salary,
       CASE WHEN salary = max_salary THEN 'highest'
            WHEN salary = min_salary THEN 'lowest'
       END AS salary_type
FROM (
    SELECT e.department,email, 
           e.salary,
           (SELECT MAX(salary) FROM employees b WHERE e.department = b.department) as max_salary,
           (SELECT MIN(salary) FROM employees b WHERE e.department = b.department) as min_salary
    FROM employees e
) AS employee_details where email is not null;
							 
							 
(Select b.department,email,salary,							 
(Select min(salary) from employees b where b.department=c.department) as max_salary),							 
(select max(salary) from employees b where b.department = c.department) as min_salary
From employees b) As details where email is not null		
				
				
(select b.department, salary,				
(select Max(salary) from employees c Where b.department = c. department) as max_Salary)
From employees b) as details where email is not null
					 
(select b.department, salary,
(Select min(salary) from employees c where b.department = c.department) as max_salary)
from employees b) as details from email is not null


--error is "" it should be apostrphe
Select email, salary, Case When salary = min_salary then 'highest' end as salary_type
From(
Select email,salary,
(select min(salary) from employees c where b.department = c.department) as min_salary from employees b) as tfg


Select email, salary, Case When salary = min_salary then 'highest' 
							When salary = max_salary then 'hissssss'end as salary_type
From(
Select email,salary,
(select min(salary) from employees c where b.department = c.department) as min_salary,
(select max(salary) from employees c where b.department = c.department)	as max_salary from employees b) as tfg
Where email is not null and salary_type is not null


SELECT 
    
    salary, 
    CASE 
        WHEN salary = min_salary THEN 'highest'
        WHEN salary = max_salary THEN 'hissssss'
    END AS salary_type
FROM (
    SELECT 
        
        salary,
        (SELECT MIN(salary) FROM employees c WHERE b.department = c.department) AS min_salary,
        (SELECT MAX(salary) FROM employees c WHERE b.department = c.department) AS max_salary
    FROM 
        employees b
) AS tfg ;


-- this query had error in column names and ( ) brackets!
Select first_name,region_id,salary, case when salary = avg_salary then 'avg' end as your_avg
from(
Select first_name,region_id,salary,
(Select Min(salary) from employees c Where b.department = c.department) as avg_salary From employees b) as tfg

SELECT 
    first_name,
    region_id,
    salary,
    CASE 
        WHEN salary = avg_salary THEN 'avg'
    END AS your_avg
FROM (
    SELECT 
        first_name,
        region_id,
        salary,
        (SELECT Min(salary) FROM employees c WHERE b.department = c.department) AS avg_salary 
    FROM 
        employees b
) AS tfg;


Select salary, case when salary = Min_salary then 'minimum' end as min_salary
From (
select salary, ( select Avg(salary) from employees c where b.department = c.department ) as min_salary
				From employees b) as tfg


select salary, case when salary=max_salary then 'Max' end as max_salary
From (select salary, (select max(salary) from employees b where b.department = c.department) as max_salary from employees c) as tfg


Select salary, case when salary=minimum_salary then 'lowest' end as minimum_salary
From (select salary, (select min(salary) from employees c where b.department=c.department) as minimum_salary
	  from employees b) as tfg

Select salary, case when salary=Minimum_salary then 'min_sal' end as Minimum_salary
from (select salary, (select min(salary) from employees c where b.department = c.department) as Minimum_salary from employees b)
as tfg

Select salary, case when salary = Min_sal then 'lowest' end as Min_sal
From (select salary, (select min(salary) from employees c where b.department = c.department) as Min_sal from employees b) as tff

Select salary, case when salary=Max_salary then 'high' end as Max_salary
From (select salary, (select max(salary) from employees c where b.department=c.department) as Max_salary from employees b) as tfg


Select first_name,email,salary, case when salary = max_salary then 'highest' end as max_salary
from (select first_name,email,salary, (select max(salary) from employees c where b.department = c.department) as max_salary
from employees b where email is not null)















