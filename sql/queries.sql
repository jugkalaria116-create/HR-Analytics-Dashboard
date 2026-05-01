// Total Employees
SELECT COUNT(*) AS total_employees FROM employees;

// Attrition Rate
SELECT ROUND(
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)*100/COUNT(*),2
) AS attrition_rate
FROM employees;

// Attrition by Department
SELECT Department,
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS attrition_count
FROM employees
GROUP BY Department
ORDER BY attrition_count DESC;

// Overtime vs Attribute 
SELECT OverTime,
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS left_company
FROM employees
GROUP BY OverTime;

// Avg Salary by Job Role
SELECT JobRole,
ROUND(AVG(MonthlyIncome),2) AS avg_salary
FROM employees
GROUP BY JobRole
ORDER BY avg_salary DESC;

// Gender Ratio
SELECT Gender, COUNT(*) AS total
FROM employees
GROUP BY Gender;

// Attrition by Job Role
SELECT JobRole,
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS attrition_count
FROM employees
GROUP BY JobRole
ORDER BY attrition_count DESC;

// Avg Salary by Department
SELECT Department,
ROUND(AVG(MonthlyIncome),2) AS avg_salary
FROM employees
GROUP BY Department
ORDER BY avg_salary DESC;

// Overtime Impact
SELECT OverTime,
COUNT(*) AS employees,
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS attrition_count
FROM employees
GROUP BY OverTime;

// Age Group Distribution
SELECT 
CASE
WHEN Age < 30 THEN 'Under 30'
WHEN Age BETWEEN 30 AND 39 THEN '30-39'
WHEN Age BETWEEN 40 AND 49 THEN '40-49'
ELSE '50+'
END AS age_group,
COUNT(*) AS total
FROM employees
GROUP BY age_group;

// Satisfaction vs Attrition
SELECT JobSatisfaction,
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS attrition_count
FROM employees
GROUP BY JobSatisfaction
ORDER BY JobSatisfaction;