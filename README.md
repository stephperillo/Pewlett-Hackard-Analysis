# Pewlett-Hackard-Analysis

## Overview of the analysis

The purpose of this analysis is to examine the employee data of the company Pewlett Hackard so that management can prepare for the "silver tsunami" as many current employees reach retirement age. It will beneficial to know exactly how many employees they can expect to retire in each title so that they can prepare to replace them and identify which employees are eligible to participate in a mentorship program.

I created an entity relationship diagram (ERD) using quickdatabasediagrams.com to diagram the data so that I could create queries in PostgreSQL.

![EmployeesDB](https://github.com/stephperillo/Pewlett-Hackard-Analysis/blob/main/EmployeeDB.png)

## Results

Retiring Employees by Title

In order to find out how many employees will be retiring soon, I filtered to find current employees who were born between 1952 and 1955 along with their titles.

![retiring_titles.png](https://github.com/stephperillo/Pewlett-Hackard-Analysis/blob/main/Data/retiring_titles.png)

Four major findings from this are:
1. There are 72,458 roles that may need to be filled.
2. There are senior level employees (engineers and staff) who may be retiring soon.
3. There are 2 managers who may be retiring soon.
4. The majority of retiring employees hold senior positions.

Mentorship Eligibility

In this analysis, I found the current employees who were born in the year 1965.
The following image shows the first five rows of this query:
![mentorship_elig.png](https://github.com/stephperillo/Pewlett-Hackard-Analysis/blob/main/Data/mentorship_elig.png)

Four major findings from this query are:
1. There are 1,549 current employees who are eligible to be mentored.
2. None of the eligible mentors (from this query) are currently managers.
3. 
4. 

## Summary

- How many roles will need to be filled as the "silver tsunami" begins to make an impact?

In order to replace the number of retirees from this group who were born between 1952 and 1955, 

- Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?



Two additional queries or tables that may provide more insight into the upcoming "silver tsunami" include:

1. A query to find the names and titles of employees who were born between 1956 and 1957

  Employees born in 1957 turn 65 this year, so it will be beneficial to examine this data as well in preparation. 
  
  There are 36,606 current employees who were born between 1956 and 1957, including three current managers (a Finance manager, one Production manager, and one Development manager). Unfortunately, these three managers does not manage either of the two departments (Human Resources and Sales) that would be losing a manager from the `retiring_titles` table (current employees who were born between 1952 and 1955). 
  
 ![Employees_born_between_1956_and_1957.png](https://github.com/stephperillo/Pewlett-Hackard-Analysis/blob/main/Data/Employees_born_between_1956_and_1957.png)
  
2. A query to find additional potential mentorship eligible employees who were born in the year 1958. 

Another point to note is that the initial mentorship eligibility query does not take into account the employee's length of employment, only if the employee was born in the year 1965. In this data set of current employees, the most recent employment dates occur in the year 2000, however, realistically it is possible that an employee may be hired one year ago or less. The employee's age should not necessarily 
