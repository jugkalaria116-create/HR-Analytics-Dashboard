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
