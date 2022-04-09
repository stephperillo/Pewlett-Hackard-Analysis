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

This is a count of their current titles:

![mentee_titles.png](https://github.com/stephperillo/Pewlett-Hackard-Analysis/blob/main/Data/mentee_titles.png)

Four major findings from this query are:
1. There are 1,549 current employees who are eligible to be mentored.
2. None of the mentorship-eligible employees (from this query of employees who were born in 1965) are currently managers.
3. The two positions that these the mentorship-eligible employees (a.k.a. potential "mentees") are Staff and Senior Engineer. The fact that there are a lot of Senior Staff and Senior Engineers in this group is a good.
4. There are not nearly enough mentees in this group to replace all the retirees.

## Summary

- How many roles will need to be filled as the "silver tsunami" begins to make an impact?

In order to replace the number of retirees from this group who were born between 1952 and 1955, 72,458 roles will need to be filled. 

- Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

There are many more retirement-ready employees than employees who were born in 1965 (72,458 vs. 1,549). 

Two additional queries or tables that may provide more insight into the upcoming "silver tsunami" include:

1. A query to find additional potential mentor eligible employees who were born between 1956 and 1964.
2. A query to see if any of these employees are currrent managers.

Because there are only 1,549 current employees eligible for the mentorship program and 72,458 retirees, it is helpful to see if the mentorship eligibility can be expanded.

![Mentorship eligibility_1966_to_1964](https://github.com/stephperillo/Pewlett-Hackard-Analysis/blob/main/Data/mentorship_eligibility_1966_to_1964.png)

There are currently 166,117 employees who were born between 1956 and 1964.
There are 18 current managers who were born between 1956 and 1964. 

![mentor_counts_1966_to_1964](https://github.com/stephperillo/Pewlett-Hackard-Analysis/blob/main/Data/mentor_counts_1966_to_1964.png)

Expanding the mentor range to include some of this group of employees would help lighten the load for all mentors.

There are two departments (Human Resources and Sales) that would be lose a manager from group of current employees who were born between 1952 and 1955. 
  
We can also conduct additional queries to determine if any of the current employees who were born between 1956 and 1964 are managers in Human Resources or Sales.  
 
Another point to note is that the initial mentorship eligibility query does not take into account the employee's length of employment, only if the employee was born in the year 1965. In this data set of current employees, the most recent employment dates occur in the year 2000, however, realistically it is possible that an employee may have been hired not too long ago, i.e. less than a one year ago. This is another factor to consider in future queries. 
