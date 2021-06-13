--Create Retirement Titles Table
SELECT et.emp_no,
    et.first_name,
    et.last_name,
    t.title,
	t.from_date,
	t.to_date
--Create retirement_titles table
INTO retirement_titles
FROM employees as et
LEFT JOIN titles as t
ON et.emp_no = t.emp_no
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY emp_no;


-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
--Create unique_titles table
INTO unique_titles
FROM retirement_titles
--Order by Employee number and Descending date
ORDER BY emp_no, to_date DESC;


-- Retrieve number of titles from the unique_titles table
SELECT 
		COUNT (DISTINCT emp_no),
		title	
--Create retiring_titles table
INTO retiring_titles
FROM 
	unique_titles
-- Group the table by title, then sort the count column in descending order.	
GROUP BY title
ORDER BY COUNT DESC;


-- Create a table to identify retirement-ready potential mentors
SELECT DISTINCT ON	(emp_no) e.emp_no,
		e.first_name,
		e.last_name,
		e.birth_date,
		de.from_date,
		de.to_date,
		t.title		
-- Put data in its own table
INTO mentorship_eligibility
FROM 	employees AS e
JOIN	dept_emp as de
ON e.emp_no = de.emp_no
JOIN	titles as t
ON e.emp_no = t.emp_no
-- Filter for current employees only
WHERE de.to_date = '9999-01-01'
-- 		Filter for soon-to-be retirees by birth date
		AND birth_date BETWEEN '1965-01-01' AND '1965-12-31'		
-- 		Sort by employee number
ORDER BY emp_no ASC;



-- Among the potential mentors, find how many hold each title
SELECT 
		title,
		COUNT(emp_no)
FROM mentorship_eligibility
GROUP BY title
ORDER BY COUNT DESC;


-- Query to find more mentors less restrictive age group
SELECT DISTINCT ON	(emp_no) e.emp_no,
		e.first_name,
		e.last_name,
		e.birth_date,
		de.from_date,
		de.to_date,
		t.title		
-- Put data in its own table
INTO improved_mentorship_eligibility
FROM 	employees AS e
JOIN	dept_emp as de
ON e.emp_no = de.emp_no
JOIN	titles as t
ON e.emp_no = t.emp_no
-- Filter for current employees only
WHERE de.to_date = '9999-01-01'
-- 		Filter for soon-to-be retirees by birth date
		AND birth_date BETWEEN '1964-01-01' AND '1969-12-31'		
-- 		Sort by employee number
ORDER BY emp_no ASC;


-- Among the potential mentors, find how many hold each title
SELECT 
		title,
		COUNT(emp_no)
FROM improved_mentorship_eligibility
GROUP BY title
ORDER BY COUNT DESC;

