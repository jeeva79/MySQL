# Write your MySQL query statement below
SELECT 
    e1.employee_id,
    e1.department_id
FROM employee e1
WHERE e1.primary_flag = 'Y'
OR 
    e1.primary_flag = 'N' AND NOT EXISTS (
        SELECT 
			1 
        FROM employee e2
        WHERE e2.employee_id = e1.employee_id AND e2.primary_flag = 'Y');