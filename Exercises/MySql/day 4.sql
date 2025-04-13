-- Create MNC(Multi National Company) database
CREATE DATABASE MNC;
USE MNC;

-- Table 1
-- Create the companies table with additional attributes and constraints
CREATE TABLE Companies(
company_id INT AUTO_INCREMENT PRIMARY KEY,
company_name VARCHAR(100) NOT NULL,
headquarters_location VARCHAR(100),
established_date DATE,
industry VARCHAR(50),
revenue DECIMAL (15, 2) CHECK (revenue >= 0), -- Revenue must be non-negative 233345
employee_count INT DEFAULT 0 CHECK(employee_count >= 0), -- Employee count must be non-negative
website VARCHAR(255) UNIQUE, -- Unique website URL for the company
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Timestamp for record creation
updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP -- Timestamp for records
);

drop table Companies;

-- insert 10 records
INSERT INTO Companies(company_name, headquarters_location, established_date, industry, revenue, employee_count, website)
VALUES
('Tata Consultancy Services', 'Mumbai, Maharashtra', '1968-04-01', 'Information Technology', 2000000000.00, 500000, 'https://www.tcs.com'),
('Reliance Industries Limited', 'Mumbai, Maharashtra', '1960-05-05', 'Conglomerate', 8000000000.00, 200000, 'https://www.ril.com'),
('Infosys', 'Bengaluru, Karnataka', '1981-07-02', 'Information Technology', 13000000000.00, 2500000, 'https://www.infosys.com'),
('Wipro', 'Bengaluru, Karnataka', '1945-12-29', 'Information Technology', 8000000000.00, 200000, 'https://www.wipro.com'),
('HDFC Bank', 'Mumbai, Maharashtra', '1994-08-01', 'Banking', 15000000000.00, 120000, 'https://www.hdfcbank.com'),
('ICICI Bank', 'Mumbai, Maharashtra', '1994-01-05', 'Banking', 1200000000.00, 100000, 'https://www.icicibank.com'),
('Bharti Airtel', 'New Delhi', '1995-07-07', 'Telecommunication', 1500000000.00, 30000, 'https://www.airtel.in'),
('State Bank of India ', 'Mumbai, Maharashtra', '1995-01-01', 'Banking', 2000000000.00, 2500000, 'https://www.sbi.co.in'),
('Hindustan Unilever Limited', 'Mumbai, Maharashtra', '1933-10-17', 'Consumer Goods', 600000000.00, 50000, 'https://www.hul.co.in'),
('Larsen & Tourbo', 'Mumbai, Maharashtra', '1938-02-07', 'Engineering and Construction', 1500000000.00, 500000, 'https://www.larsentourbo.com');

-- 1. SELECT Queries
 -- Select All Records
 SELECT * FROM Companies;
 
 -- 1. Select Specific Columns
 SELECT company_name, headquarters_location, revenue FROM Companies;
 
 -- 2. Select companies in a specific industry
 SELECT * FROM Companies WHERE industry = 'Information Technology';
 
 -- 3. Select Companies with a Revenue greater than a certain amount
 SELECT * FROM Companies WHERE revenue > 100000000.00;
 
 -- 4. Select Companies established in a specific year
 SELECT * FROM Companies WHERE YEAR(established_date) = '1994';
 
 -- 5. Select Companies Ordered by Revenue in Descending Order
 SELECT * FROM Companies ORDER BY revenue DESC;
 
 -- 6. Select Companies with a specific Headquarters Location
 SELECT * FROM Companies WHERE headquarters_location = 'Mumbai, Maharashtra';
 
 -- 7. Select Companies with Employee Count Greater than a certain number
 SELECT * FROM Companies WHERE employee_count > 100000;
 
 -- 8. SELECT Companies Established after certain date
 SELECT * FROM Companies WHERE established_date > '2000-01-01';
 
 -- 9. Select Companies with a revenue between two values
 SELECT * FROM Companies ORDER BY revenue BETWEEN 5000000.00 AND 200000000.00;
 
 -- 10. Count the number of companies in each industry 
 SELECT industry, COUNT(*) as company_count FROM Companies GROUP BY industry;
 
 -- 11. Select Company Name and Website and Order By company name
 SELECT company_name, website FROM Companies ORDER BY company_name;
 
 -- 12.  Select Company Name and Establish date and select companies with specific location 
 SELECT company_name, established_date FROM Companies WHERE headquarters_location = 'Bengaluru, Karnataka';
 
 -- 13. Select Companies which are in banking
 SELECT * FROM Companies WHERE industry = 'Banking';
 
 -- 14. Select Companies which includes character 'Limited'
 SELECT * FROM Companies WHERE company_name LIKE '%Limited%';
 
 -- 15. Select Companies which are established between '01-01-1930' and '31-12-1989'
 SELECT * FROM Companies ORDER BY established_date BETWEEN '01-01-1930' AND '31-12-1989';
 
 /*
 The error message you're encountering indicates that MYSQL's "safe update mode" is enabled.
 This mode prevents you from executing UPDATE or DELETE statements that do not include a WHERE
 clause that uses a key column (like PRIMARY KEY). This is a saftey feature to prevent 
 accidental updates or deletions of all rows in the table.
 */
 
 -- Disable Safe Update mode Temporarily
 SET SQL_SAFE_UPDATES = 0;
 
 SET SQL_SAFE_UPDATES = 1; -- Re-enable safe updates
 
 -- 2. Alter Queries
 
 -- 1. Add a new column
 ALTER TABLE Companies
 ADD COLUMN stock_symbol VARCHAR(10);
 
 SELECT * FROM Companies;
 
 -- 2. Modify an existing column
 ALTER TABLE Companies
 MODIFY COLUMN revenue DECIMAL(20, 2) CHECK (revenue >= 0);
 
 -- 3. Drop a Column 
 ALTER TABLE Companies
 DROP COLUMN stock_symbol;
 
 -- 4. Rename a column
 ALTER TABLE Companies
 CHANGE COLUMN headquarters_location location VARCHAR(50);
 
 -- 5. Add a default value to the existing column
 ALTER TABLE Companies
 ALTER COLUMN employee_count SET DEFAULT 1;
 
 -- 6. Add a new column with a deafult value
 ALTER TABLE Companies
 ADD COLUMN Country VARCHAR(50) DEFAULT 'INDIA';
 
 -- 7. Drop a column if it exists
 ALTER TABLE Companies
 DROP COLUMN IF EXISTS Country;
 
 -- 8. Add a Unique Constraint
 ALTER TABLE Companies
 ADD CONSTRAINT unique_website UNIQUE (website);
 
 -- 9. Change the data type of the column
 ALTER TABLE Companies
 MODIFY COLUMN established_date DATETIME;
 
 -- 10. Add a Foreign Key constraint
 ALTER TABLE Companies
 ADD CONSTRAINT fk_industry FOREIGN KEY (industry) REFERENCES Industries(industry_name);
 
 -- 3. DELETE Queries
 
 -- 1. Delete a specific record 
 DELETE FROM Companies
 WHERE company_name = 'HDFC Bank';
 
 SELECT * FROM Companies;
 
 -- 2. Delete records based on conditions
 DELETE FROM Companies
 WHERE industry = 'Banking';
 
 -- 3. Delete Records with revenue below a certain amount
 DELETE FROM Companies
 WHERE revenue < 50000000.00;
 
 -- 4. Delete Records Established before a certain date
 DELETE FROM Companies
 WHERE established_date < '2001-01-01';
 
 -- 5. Delete records with a specific headquarters location
 DELETE FROM Companies
 WHERE location = 'Mumbai, Maharashtra';
 
 -- 6. Delete records with a specific employee count
 DELETE FROM Companies
 WHERE employee_count = 0;
 
 -- 7. Delete records with a specific website
 DELETE FROM Companies
 WHERE website = 'https://www.facebook.com';
 
 -- 8. Delete records based on multiple conditions
 DELETE FROM Companies
 WHERE industry = 'Telecommunications'  AND revenue < 100000000.00;
 
 -- 9. Delete All records (Use with caution)
 DELETE FROM Companies;
 
 SELECT * FROM Companies;
 
 -- 10. Delete records with a specific name pattern
 DELETE FROM Companies
 WHERE company_name LIKE 'H%';
 
 -- 4. Rename Query
 
 -- 1. Rename the database (not allowed)
 ALTER DATABASE MNC RENAME TO MultiNationalCompanies;
 
 -- 2. Rename the Companies table
 ALTER TABLE Companies RENAME TO MultiNationalCompanies;
 
 -- 3. Rename the company_id 
 ALTER TABLE MultiNationalCompanies RENAME COLUMN company_id TO id;
 
 SELECT * FROM MultiNationalCompanies;
 
 -- 4. Rename the company_name column
 ALTER TABLE Companies RENAME COLUMN company_name TO name;
 
 -- 5. Rename the headquarters_location column
 ALTER TABLE Companies RENAME COLUMN headquarters_location TO headquarers;
 
 -- 6. Rename Multiple Columns
 ALTER TABLE Companies
 RENAME COLUMN industry TO buisness_sector,
 RENAME COLUMN website TO buisness_website;
 
 -- 5. Update Query
 
 -- Disable Safe Update mode Temporarily
 SET SQL_SAFE_UPDATES = 0;
 
 SET SQL_SAFE_UPDATES = 1; -- Re-enable safe updates
 
 -- 1. Update a specific record
 UPDATE Companies
 SET revenue = 2200000000.00, employee_count = 520000
 WHERE company_name = 'Tata Consultancy Services';
 
 -- 2. Update Multiple Records
  UPDATE Companies
 SET buisness_sector = 'Telecom'
 WHERE company_name = ('Bharti Airtel', 'Reliance Industries Limited');
 
 -- 3. Update Revenue for All Companies in a Specific Industry
  UPDATE Companies
 SET revenue = revenue * 1.10
 WHERE industry = 'Banking';
 
 -- 4. Update employee count for a specific company
  UPDATE Companies
 SET employee_count = 210000
 WHERE company_name = 'Wipro';
 
 -- 5. Update Headquarters Location
  UPDATE Companies
 SET headquarters_location = 'Gurugram, Haryana'
 WHERE company_name = 'ICICI Bank';
 
 -- 6. Update established date
  UPDATE Companies
 SET established_date = '1994-01-01'
 WHERE company_name = 'ICICI Bank';
 
 -- 7. Update Wesite URL
 UPDATE Companies
 SET website = 'https://www.infosys.co.in'
 WHERE company_name = 'Infosys';
 
 -- 8. Update revenue for companies with low employee count
 UPDATE Companies
 SET revenue = 0
 WHERE employee_count < 50000;
 
 -- 9. Update Industry for a specific company
 UPDATE Companies
 SET industry = 'Consumer Products'
 WHERE company_name = 'Hindustan Unilever Limited';
 
 -- 10. Update Multiple fields for a specific company
 UPDATE Companies
 SET revenue = 1600000000.00 AND industry = 'Construction & Engineering'
 WHERE company_name = 'Larsen & Toubro';
 
 -- Table 2: Department
 CREATE TABLE Department(
 dept_id INT PRIMARY KEY,
 dept_name VARCHAR(50) UNIQUE NOT NULL,
 dept_head VARCHAR(50) NOT NULL,
 location VARCHAR(50) NOT NULL,
 no_of_employees INT NOT NULL
 );
 
 INSERT INTO Department (dept_id, dept_name, dept_head, location, no_of_employees) 
 VALUES(1, 'Human Resources', 'Priya Sharma', 'Mumbai', 35),
(2, 'IT', 'Rahul Mehta', 'Bengaluru', 120),
(3, 'Finance', 'Anjali Nair', 'New York', 45),
(4, 'Marketing', 'James Williams', 'London', 60),
(5, 'Sales', 'Rakesh Patil', 'Dubai', 75),
(6, 'Research', 'Sophia Zhang', 'Singapore', 40),
(7, 'Legal', 'Rajiv Khanna', 'Toronto', 20),
(8, 'Customer Support', 'Emily Brown', 'Manila', 90),
(9, 'Procurement', 'Sanjay Kumar', 'Berlin', 25),
(10, 'Logistics', 'Thomas Müller', 'Frankfurt', 30);

-- Select Query
SELECT * FROM Department;

-- 1. Select specific columns 
SELECT dept_id, dept_name FROM Department;

-- 2. Select column with 'Legal'
SELECT * FROM Department WHERE dept_name = 'Legal';

-- 3. Select columns and ORDER BY department name
SELECT * FROM Department ORDER BY dept_name;

-- 4. Select department which has more than 50 employees
SELECT * FROM Department WHERE no_of_employees > 50;

-- 5. Select department which has less than 80 employees
SELECT * FROM Department WHERE no_of_employees < 80;

-- 6. Select a department with a specific location
SELECT * FROM Department WHERE location = 'Dubai';

-- 7. Select a any three columns
SELECT  dept_name, location, dept_head FROM Department; 

-- 8. Select departments with certain range of employees
SELECT * FROM Department WHERE no_of_employees BETWEEN 50 AND 100;

-- 9. Select department which includes characters 'IT'
SELECT * FROM Department WHERE dept_name LIKE '%IT%';

-- 10. Select department which includes characters 'Logistics'
SELECT * FROM Department WHERE dept_name LIKE '%Logistics%';

-- Alter Query
-- 1. Rename the department name
ALTER TABLE Department
CHANGE COLUMN dept_id Department_ID INT;

-- 2. Add new column
ALTER TABLE Department
ADD COLUMN DeptHead_email VARCHAR(50);

-- 3. Remove a column
ALTER TABLE Department
DROP COLUMN DeptHead_email;

-- 4. Add a default value to the existing column
 ALTER TABLE Department
 ALTER COLUMN no_of_employee SET DEFAULT 1;
 
 -- 5. Add a new column with a deafult value
 ALTER TABLE Department
 ADD COLUMN Country VARCHAR(50) DEFAULT 'INDIA';
 
 -- 6. Drop a column if it exists
 ALTER TABLE Department
 DROP COLUMN IF EXISTS Country;
 
 -- 7. Add a Unique Constraint
 ALTER TABLE Department
 ADD CONSTRAINT unique_website UNIQUE (website);
 
 -- 9. Change the data type of the column
 ALTER TABLE Department
 MODIFY COLUMN no_of_employess VARCHAR(50);
 
 -- 10. Add a Foreign Key constraint
 ALTER TABLE Department
 ADD CONSTRAINT fk_industry FOREIGN KEY (industry) REFERENCES Industries(industry_name);
 
 -- Delete Query
 
 -- 1. Delete department by ID
DELETE FROM Department WHERE department_id = 1;

-- 2. Delete department by name
DELETE FROM Department WHERE department_name = 'Sales';

-- 3. Delete departments with less than 30 employees
DELETE FROM Department WHERE number_of_employees < 30;

-- 4. Delete department located in 'Dubai'
DELETE FROM Department WHERE location = 'Dubai';

-- 5. Delete department with manager 'Emily Brown'
DELETE FROM Department WHERE manager_name = 'Emily Brown';

-- 6. Delete all departments in 'India' locations (Mumbai or Bengaluru)
DELETE FROM Department WHERE location IN ('Mumbai', 'Bengaluru');

-- 7. Delete all departments whose names start with 'L'
DELETE FROM Department WHERE department_name LIKE 'L%';

-- 8. Delete all departments with more than 80 employees
DELETE FROM Department WHERE number_of_employees > 80;

-- 9. Delete departments not in Asia
DELETE FROM Department 
WHERE location NOT IN ('Mumbai', 'Bengaluru', 'Singapore', 'Manila', 'Dubai');

-- 10. Delete all departments 
DELETE FROM Department;

-- Rename Query

-- 1. Rename the database (not allowed)
 ALTER DATABASE MNC RENAME TO MultiNationalCompanies;
 
 -- 2. Rename the Department table
 ALTER TABLE Department RENAME TO Departments;
 
 -- 3. Rename the Dept_id 
 ALTER TABLE Departments RENAME COLUMN Department_ID TO id;
 
 SELECT * FROM Departments;
 
 -- 4. Rename the Department name column
 ALTER TABLE Departments RENAME COLUMN dept_name TO name;
 
 -- 5. Rename the headquarters_location column
 ALTER TABLE Companies RENAME COLUMN headquarters_location TO headquarers;
 
 -- 6. Rename Multiple Columns
 ALTER TABLE Departments
 RENAME COLUMN name TO sector,
 RENAME COLUMN website TO buisness_website;
 
 -- Update Query
-- 1. Update manager name for the IT department
UPDATE Department SET manager_name = 'Vikram Desai' WHERE department_name = 'IT';

-- 2. Update number of employees in HR
UPDATE Department SET number_of_employees = 40 WHERE department_name = 'Human Resources';

-- 3. Change location of the Finance department
UPDATE Department SET location = 'San Francisco' WHERE department_name = 'Finance';

-- 4. Give a 10% employee boost to Marketing
UPDATE Department SET number_of_employees = number_of_employees * 1.10 WHERE department_name = 'Marketing';

-- 5. Update department name from 'Legal' to 'Legal Affairs'
UPDATE Department SET department_name = 'Legal Affairs' WHERE department_name = 'Legal';

-- 6. Assign a new manager to Customer Support
UPDATE Department SET manager_name = 'Daniel Garcia' WHERE department_name = 'Customer Support';

-- 7. Reduce employee count by 5 in Research department
UPDATE Department SET number_of_employees = number_of_employees - 5 WHERE department_name = 'Research';

-- 8. Move Procurement department to Amsterdam
UPDATE Department SET location = 'Amsterdam' WHERE department_name = 'Procurement';

-- 9. Update manager for department ID 10 (Logistics)
UPDATE Department SET manager_name = 'Klaus Richter' WHERE department_id = 10;

-- 10. Set number of employees to 0 where location is 'Berlin' (simulate closure)
UPDATE Department SET number_of_employees = 0 WHERE location = 'Berlin';

 -- Table 3: Employee
 
 CREATE TABLE Employee(
 employee_id INT PRIMARY KEY,
 employee_name VARCHAR(50) NOT NULL,
 job_title VARCHAR(50) NOT NULL,
 salary DECIMAL(10, 2) NOT NULL,
 hire_date DATE
 );
 
 INSERT INTO Employee (employee_id, employee_name, job_title, hire_date, salary) VALUES
(101, 'Aman Verma', 'Software Engineer', '2021-05-12', 75000.00),
(102, 'Sarah Lee', 'HR Executive', '2020-03-18', 50000.00),
(103, 'John Carter', 'Finance Analyst', '2019-11-22', 68000.00),
(104, 'Meera Joshi', 'Marketing Manager', '2022-01-10', 72000.00),
(105, 'David Kim', 'Sales Representative', '2021-08-05', 55000.00),
(106, 'Riya Patel', 'Data Scientist', '2023-06-15', 80000.00),
(107, 'Ali Khan', 'Legal Advisor', '2020-09-30', 60000.00),
(108, 'Nancy Silva', 'Support Agent', '2022-03-12', 45000.00),
(109, 'Tom Becker', 'Procurement Officer', '2018-12-01', 52000.00),
(110, 'Nisha Rao', 'Logistics Head', '2021-07-20', 70000.00);

-- Select Query
-- 1. Select all columns and all employees
SELECT * FROM Employee;

-- 2. Select only employee names and their job titles
SELECT employee_name, job_title FROM Employee;

-- 3. Select employees hired after 2021
SELECT * FROM Employee WHERE hire_date > '2021-01-01';

-- 4. Select employees with salary more than 60,000
SELECT * FROM Employee WHERE salary > 60000;

-- 5. Select employees with job title 'Data Scientist'
SELECT * FROM Employee WHERE job_title = 'Data Scientist';

-- 6. Select the employee with the highest salary
SELECT * FROM Employee ORDER BY salary DESC LIMIT 1;

-- 7. Select all employees sorted by hire date (oldest first)
SELECT * FROM Employee ORDER BY hire_date ASC;

-- 8. Count how many employees were hired in 2021
SELECT COUNT(*) AS hired_in_2021 FROM Employee 
WHERE YEAR(hire_date) = 2021;

-- 9. Select unique job titles in the company
SELECT DISTINCT job_title FROM Employee;

-- 10. Select employees whose name starts with 'A'
SELECT * FROM Employee WHERE employee_name LIKE 'A%';

-- Alter Query

-- 1. Add a new column for gender
ALTER TABLE Employee ADD gender VARCHAR(10);

-- 2. Add a column for department name
ALTER TABLE Employee ADD department_name VARCHAR(50);

-- 3. Modify salary column to support more precision
ALTER TABLE Employee MODIFY salary DECIMAL(12, 2);

-- 4. Change hire_date datatype to DATETIME
ALTER TABLE Employee MODIFY hire_date DATETIME;

-- 5. Add NOT NULL constraint to employee_name
ALTER TABLE Employee MODIFY employee_name VARCHAR(100) NOT NULL;

-- 6. Drop the department_name column
ALTER TABLE Employee DROP COLUMN department_name;

-- 7. Add a default value to gender
ALTER TABLE Employee ALTER COLUMN gender SET DEFAULT 'Not Specified';

-- 8. Add a column for is_active
ALTER TABLE Employee ADD is_active BOOLEAN DEFAULT TRUE;

-- 9. Rename column employee_name to full_name
ALTER TABLE Employee RENAME COLUMN employee_name TO full_name;

-- 10. Drop the is_active column
ALTER TABLE Employee DROP COLUMN is_active;

-- Delete Query
-- 1. Delete an employee with specific ID
DELETE FROM Employee WHERE employee_id = 101;

-- 2. Delete employees with salary less than 50000
DELETE FROM Employee WHERE salary < 50000;

-- 3. Delete employees with job_title = 'Support Agent'
DELETE FROM Employee WHERE job_title = 'Support Agent';

-- 4. Delete employees hired after 2022
DELETE FROM Employee WHERE hire_date > '2022-01-01';

-- 5. Delete employees whose name starts with 'N'
DELETE FROM Employee WHERE employee_name LIKE 'N%';

-- 6. Delete employees with NULL salary (if allowed)
DELETE FROM Employee WHERE salary IS NULL;

-- 7. Delete employees with salary between 55000 and 60000
DELETE FROM Employee WHERE salary BETWEEN 55000 AND 60000;

-- 8. Delete employees not hired in 2020 or 2021
DELETE FROM Employee WHERE YEAR(hire_date) NOT IN (2020, 2021);

-- 9. Delete the highest paid employee
DELETE FROM Employee WHERE salary = (SELECT MAX(salary) FROM Employee);

-- 10. Delete all records (be careful!)
DELETE FROM Employee;

-- Rename Query
-- 1. Rename table from Employee to Employees
ALTER TABLE Employee RENAME TO Employees;

-- 2. Rename column job_title to position
ALTER TABLE Employees RENAME COLUMN job_title TO position;

-- 3. Rename column salary to monthly_salary
ALTER TABLE Employees RENAME COLUMN salary TO monthly_salary;

-- 4. Rename column hire_date to date_of_joining
ALTER TABLE Employees RENAME COLUMN hire_date TO date_of_joining;

-- 5. Rename column full_name to employee_name
ALTER TABLE Employees RENAME COLUMN full_name TO employee_name;

-- 6. Rename Employees table back to Employee
ALTER TABLE Employees RENAME TO Employee;

-- 7. Rename column gender to sex
ALTER TABLE Employee RENAME COLUMN gender TO sex;

-- 8. Rename column date_of_joining to join_date
ALTER TABLE Employee RENAME COLUMN date_of_joining TO join_date;

-- 9. Rename column monthly_salary to salary
ALTER TABLE Employee RENAME COLUMN monthly_salary TO salary;

-- 10. Rename column sex back to gender
ALTER TABLE Employee RENAME COLUMN sex TO gender;

-- Update Query
-- 1. Update salary of employee with ID 104
UPDATE Employee SET salary = 78000 WHERE employee_id = 104;

-- 2. Update job title of John Carter
UPDATE Employee SET job_title = 'Senior Finance Analyst' WHERE employee_name = 'John Carter';

-- 3. Increase all salaries by 5%
UPDATE Employee SET salary = salary * 1.05;

-- 4. Set gender as 'Female' for Sarah Lee
UPDATE Employee SET gender = 'Female' WHERE employee_name = 'Sarah Lee';

-- 5. Set gender as 'Male' where employee_name = 'Ali Khan'
UPDATE Employee SET gender = 'Male' WHERE employee_name = 'Ali Khan';

-- 6. Set job_title to 'HR Manager' for everyone in HR
UPDATE Employee SET job_title = 'HR Manager' WHERE job_title = 'HR Executive';

-- 7. Update salary to 0 for all employees with NULL salary
UPDATE Employee SET salary = 0 WHERE salary IS NULL;

-- 8. Set hire_date to current date for Riya Patel
UPDATE Employee SET hire_date = CURDATE() WHERE employee_name = 'Riya Patel';

-- 9. Set gender to 'Not Specified' where it's NULL
UPDATE Employee SET gender = 'Not Specified' WHERE gender IS NULL;

-- 10. Round all salary values
UPDATE Employee SET salary = ROUND(salary, 0);

 -- Table 4: Project
 
 CREATE TABLE Project(
 project_id INT PRIMARY KEY,
 project_name VARCHAR(50) NOT NULL,
 start_date DATE,
 end_date DATE,
 budget DECIMAL(10, 2) NOT NULL
 );
 
 INSERT INTO Project (project_id, project_name, start_date, end_date, budget) VALUES
(201, 'AI Chatbot System', '2022-01-10', '2022-12-20', 150000.00),
(202, 'E-Commerce Website', '2023-03-01', '2023-10-01', 90000.00),
(203, 'Mobile App Revamp', '2021-08-15', '2022-05-30', 120000.00),
(204, 'Cloud Migration', '2023-06-01', '2023-07-01', 180000.00),
(205, 'HR Management System', '2020-09-01', '2021-07-01', 70000.00),
(206, 'Marketing Analytics Tool', '2022-11-01', '2022-12-01', 95000.00),
(207, 'Cybersecurity Upgrade', '2021-01-20', '2022-01-20', 130000.00),
(208, 'Payroll Automation', '2023-01-01', '2023-12-31', 60000.00),
(209, 'Customer Feedback System', '2022-04-01', '2022-12-01', 85000.00),
(210, 'Global CRM Integration', '2024-01-10', '2024-06-10',200000.00);

-- Select Query
-- 1. View all projects
SELECT * FROM Project;

-- 2. View only project names and budgets
SELECT project_name, budget FROM Project;

-- 3. List ongoing projects (no end date)
SELECT * FROM Project WHERE end_date IS NULL;

-- 4. Projects with budget > 100000
SELECT * FROM Project WHERE budget > 100000;

-- 5. Projects starting in 2023
SELECT * FROM Project WHERE YEAR(start_date) = 2023;

-- 6. Order projects by budget (highest first)
SELECT * FROM Project ORDER BY budget DESC;

-- 7. Count how many projects are completed
SELECT COUNT(*) AS completed_projects FROM Project WHERE end_date IS NOT NULL;

-- 8. Find average project budget
SELECT AVG(budget) AS avg_budget FROM Project;

-- 9. List projects ending in December
SELECT * FROM Project WHERE MONTH(end_date) = 12;

-- 10. List all projects with names containing 'System'
SELECT * FROM Project WHERE project_name LIKE '%System%';

-- Alter Query

-- 1. Add a new column for project manager
ALTER TABLE Project ADD project_manager VARCHAR(100);

-- 2. Add a column to track project status
ALTER TABLE Project ADD status VARCHAR(20) DEFAULT 'Ongoing';

-- 3. Modify budget to increase decimal precision
ALTER TABLE Project MODIFY budget DECIMAL(14, 2);

-- 4. Modify project_name to be NOT NULL
ALTER TABLE Project MODIFY project_name VARCHAR(100) NOT NULL;

-- 5. Change start_date to DATETIME
ALTER TABLE Project MODIFY start_date DATETIME;

-- 6. Add a column for client name
ALTER TABLE Project ADD client_name VARCHAR(100);

-- 7. Add a column for team size
ALTER TABLE Project ADD team_size INT DEFAULT 0;

-- 8. Drop the column client_name
ALTER TABLE Project DROP COLUMN client_name;

-- 9. Rename column team_size to total_team_members
ALTER TABLE Project RENAME COLUMN team_size TO total_team_members;

-- 10. Drop the column project_manager
ALTER TABLE Project DROP COLUMN project_manager;

-- Delete Query
-- 1. Delete a project by ID
DELETE FROM Project WHERE project_id = 205;

-- 2. Delete projects with budget less than 80,000
DELETE FROM Project WHERE budget < 80000;

-- 3. Delete projects that ended in 2021
DELETE FROM Project WHERE YEAR(end_date) = 2021;

-- 4. Delete projects with name starting with 'Customer'
DELETE FROM Project WHERE project_name LIKE 'Customer%';

-- 5. Delete projects that have NULL start_date
DELETE FROM Project WHERE start_date IS NULL;

-- 6. Delete all completed projects
DELETE FROM Project WHERE end_date IS NOT NULL;

-- 7. Delete projects that started before 2021
DELETE FROM Project WHERE start_date < '2021-01-01';

-- 8. Delete projects with budget between 60000 and 90000
DELETE FROM Project WHERE budget BETWEEN 60000 AND 90000;

-- 9. Delete the most expensive project
DELETE FROM Project WHERE budget = (SELECT MAX(budget) FROM Project);

-- 10. Delete all records from the table
DELETE FROM Project;

-- Rename Query
-- 1. Rename table Project to Projects
ALTER TABLE Project RENAME TO Projects;

-- 2. Rename column project_name to name
ALTER TABLE Projects RENAME COLUMN project_name TO name;

-- 3. Rename column budget to total_budget
ALTER TABLE Projects RENAME COLUMN budget TO total_budget;

-- 4. Rename column start_date to launch_date
ALTER TABLE Projects RENAME COLUMN start_date TO launch_date;

-- 5. Rename column end_date to closing_date
ALTER TABLE Projects RENAME COLUMN end_date TO closing_date;

-- 6. Rename table Projects back to Project
ALTER TABLE Projects RENAME TO Project;

-- 7. Rename column total_budget back to budget
ALTER TABLE Project RENAME COLUMN total_budget TO budget;

-- 8. Rename column name back to project_name
ALTER TABLE Project RENAME COLUMN name TO project_name;

-- 9. Rename column launch_date back to start_date
ALTER TABLE Project RENAME COLUMN launch_date TO start_date;

-- 10. Rename column closing_date back to end_date
ALTER TABLE Project RENAME COLUMN closing_date TO end_date;

-- Update Query
-- 1. Update budget of project_id 201 to 160000
UPDATE Project SET budget = 160000 WHERE project_id = 201;

-- 2. Update end_date of 'Mobile App Revamp' to '2022-06-15'
UPDATE Project SET end_date = '2022-06-15' WHERE project_name = 'Mobile App Revamp';

-- 3. Increase budget of all projects by 10%
UPDATE Project SET budget = budget * 1.10;

-- 4. Update project_name of project_id 209
UPDATE Project SET project_name = 'Customer Voice Portal' WHERE project_id = 209;

-- 5. Set end_date = NULL for ongoing projects starting in 2024
UPDATE Project SET end_date = NULL WHERE YEAR(start_date) = 2024;

-- 6. Set budget to 0 where it's NULL
UPDATE Project SET budget = 0 WHERE budget IS NULL;

-- 7. Add 5000 to budget for all projects with 'System' in name
UPDATE Project SET budget = budget + 5000 WHERE project_name LIKE '%System%';

-- 8. Set start_date = '2023-01-01' for projects with no start date
UPDATE Project SET start_date = '2023-01-01' WHERE start_date IS NULL;

-- 9. Set end_date = '2023-12-31' for all projects with name like '%Website%'
UPDATE Project SET end_date = '2023-12-31' WHERE project_name LIKE '%Website%';

-- 10.Update the budget of a project
UPDATE Project SET budget = 1300000 WHERE project_name = 'E-Commerce Website';

 -- Table 5: Salaries
 
 CREATE TABLE Salaries (
    salary_id INT PRIMARY KEY,
    employee_id INT,
    base_salary DECIMAL(10, 2),
    bonus DECIMAL(10, 2),
    effective_date DATE,
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

INSERT INTO Salaries (salary_id, employee_id, base_salary, bonus, effective_date) VALUES
(1, 101, 60000.00, 5000.00, '2023-01-01'),
(2, 102, 75000.00, 7000.00, '2023-01-01'),
(3, 103, 50000.00, 3000.00, '2023-02-01'),
(4, 104, 85000.00, 10000.00, '2023-03-01'),
(5, 105, 72000.00, 4500.00, '2023-04-01'),
(6, 106, 68000.00, 4000.00, '2023-05-01'),
(7, 107, 95000.00, 12000.00, '2023-06-01'),
(8, 108, 62000.00, 3000.00, '2023-07-01'),
(9, 109, 57000.00, 2500.00, '2023-08-01'),
(10, 110, 80000.00, 9000.00, '2023-09-01');

-- Select Query
-- 1. View all salary records
SELECT * FROM Salaries;

-- 2. View only employee_id and base_salary
SELECT employee_id, base_salary FROM Salaries;

-- 3. Find employees with base salary > 70000
SELECT * FROM Salaries WHERE base_salary > 70000;

-- 4. Show salaries where bonus > 5000
SELECT * FROM Salaries WHERE bonus > 5000;

-- 5. List salaries effective after June 2023
SELECT * FROM Salaries WHERE effective_date > '2023-06-01';

-- 6. Sort salaries by base salary descending
SELECT * FROM Salaries ORDER BY base_salary DESC;

-- 7. Count how many employees have bonuses
SELECT COUNT(*) FROM Salaries WHERE bonus > 0;

-- 8. Calculate total salary (base + bonus) for each employee
SELECT employee_id, base_salary + bonus AS total_salary FROM Salaries;

-- 9. Find average base salary
SELECT AVG(base_salary) AS avg_salary FROM Salaries;

-- 10. List employees earning between 60k and 80k base
SELECT * FROM Salaries WHERE base_salary BETWEEN 60000 AND 80000;

-- Alter Query
-- 1. Add a column for salary type
ALTER TABLE Salaries ADD salary_type VARCHAR(20) DEFAULT 'Monthly';

-- 2. Add a column for currency
ALTER TABLE Salaries ADD currency VARCHAR(10) DEFAULT 'INR';

-- 3. Modify base_salary to allow higher precision
ALTER TABLE Salaries MODIFY base_salary DECIMAL(12, 2);

-- 4. Modify bonus to allow NULL values
ALTER TABLE Salaries MODIFY bonus DECIMAL(10,2) NULL;

-- 5. Drop the salary_type column
ALTER TABLE Salaries DROP COLUMN salary_type;

-- 6. Add a column for department_id
ALTER TABLE Salaries ADD department_id INT;

-- 7. Set default bonus to 0
ALTER TABLE Salaries ALTER COLUMN bonus SET DEFAULT 0;

-- 8. Drop currency column
ALTER TABLE Salaries DROP COLUMN currency;

-- 9. Modify effective_date to include time (DATETIME)
ALTER TABLE Salaries MODIFY effective_date DATETIME;

-- 10. Add constraint
ALTER TABLE Salaries ADD CONSTRAINT chk_bonus_positive CHECK (bonus >= 0);

-- Delete Query
-- 1. Delete salary record for employee 110
DELETE FROM Salaries WHERE employee_id = 110;

-- 2. Delete records where base salary < 60000
DELETE FROM Salaries WHERE base_salary < 60000;

-- 3. Delete salaries with 0 bonus
DELETE FROM Salaries WHERE bonus = 0;

-- 4. Delete salaries effective before Jan 2023
DELETE FROM Salaries WHERE effective_date < '2023-01-01';

-- 5. Delete records for employee 104 and 107
DELETE FROM Salaries WHERE employee_id IN (104, 107);

-- 6. Delete highest base salary
DELETE FROM Salaries WHERE base_salary = (SELECT MAX(base_salary) FROM Salaries);

-- 7. Delete salaries where total salary is under 65000
DELETE FROM Salaries WHERE (base_salary + bonus) < 65000;

-- 8. Delete all records from the table
DELETE FROM Salaries;

-- 9. Delete all salaries with NULL effective date
DELETE FROM Salaries WHERE effective_date IS NULL;

-- 10. Delete salaries with bonus more than base
DELETE FROM Salaries WHERE bonus > base_salary;

-- Rename Query
-- 1. Rename table Salaries to SalaryDetails
ALTER TABLE Salaries RENAME TO SalaryDetails;

-- 2. Rename column base_salary to monthly_salary
ALTER TABLE SalaryDetails RENAME COLUMN base_salary TO monthly_salary;

-- 3. Rename column bonus to incentive
ALTER TABLE SalaryDetails RENAME COLUMN bonus TO incentive;

-- 4. Rename column effective_date to pay_effective_date
ALTER TABLE SalaryDetails RENAME COLUMN effective_date TO pay_effective_date;

-- 5. Rename back monthly_salary to base_salary
ALTER TABLE SalaryDetails RENAME COLUMN monthly_salary TO base_salary;

-- 6. Rename table SalaryDetails back to Salaries
ALTER TABLE SalaryDetails RENAME TO Salaries;

-- 7. Rename column incentive back to bonus
ALTER TABLE Salaries RENAME COLUMN incentive TO bonus;

-- 8. Rename column pay_effective_date back to effective_date
ALTER TABLE Salaries RENAME COLUMN pay_effective_date TO effective_date;

-- 9. Rename column employee_id to emp_id
ALTER TABLE Salaries RENAME COLUMN employee_id TO emp_id;

-- 10. Rename column emp_id back to employee_id
ALTER TABLE Salaries RENAME COLUMN emp_id TO employee_id;

-- Update Query
-- 1. Increase base salary by 5% for all
UPDATE Salaries SET base_salary = base_salary * 1.05;

-- 2. Set bonus to 0 where it's NULL
UPDATE Salaries SET bonus = 0 WHERE bonus IS NULL;

-- 3. Increase bonus by 1000 for employee 105
UPDATE Salaries SET bonus = bonus + 1000 WHERE employee_id = 105;

-- 4. Decrease base salary by 2000 for employee 109
UPDATE Salaries SET base_salary = base_salary - 2000 WHERE employee_id = 109;

-- 5. Set effective_date to '2024-01-01' for employee 103
UPDATE Salaries SET effective_date = '2024-01-01' WHERE employee_id = 103;

-- 6. Update all bonuses to 10% of base salary
UPDATE Salaries SET bonus = base_salary * 0.10;

-- 7. Round all base salaries to nearest 1000
UPDATE Salaries SET base_salary = ROUND(base_salary, -3);

-- 8. Add 2000 bonus to all salaries over 80000
UPDATE Salaries SET bonus = bonus + 2000 WHERE base_salary > 80000;

-- 9. Cap bonuses at 10000
UPDATE Salaries SET bonus = 10000 WHERE bonus > 10000;

-- 10. Update base salary to 70000 for employee_id 108
UPDATE Salaries SET base_salary = 70000 WHERE employee_id = 108;



 