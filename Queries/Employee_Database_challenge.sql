-- Deliverable 1
-- Create retirement titles table
SELECT e.emp_no, e.first_name, e.last_name,
    ti.title, ti.from_date, ti.to_date
INTO retirement_titles
FROM employees AS e
INNER JOIN titles AS ti
ON e.emp_no = ti.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
    first_name,
    last_name,
    title
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

-- Retrieve number retiring employees by most recent job title
SELECT COUNT(ut.title) AS Employee_Count, ut.title
INTO retiring_titles
FROM unique_titles AS ut
GROUP BY ut.title
ORDER BY Employee_Count DESC;

-- Deliverable 2
-- Create Mentorship Eligibility table
SELECT DISTINCT ON (e.emp_no) e.emp_no,
    e.first_name,
    e.last_name,
    e.birth_date,
    de.from_date,
    de.to_date,
    ti.title
-- INTO mentorship_eligibility
FROM employees as e
INNER JOIN titles as ti 
ON e.emp_no = ti.emp_no
INNER JOIN dept_emp as de
ON e.emp_no = de.emp_no
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
    AND de.to_date = '9999-01-01'
ORDER BY emp_no;