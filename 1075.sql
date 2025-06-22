--1075. Project Employees I

SELECT 
    p.project_id,
    ROUND(
        IFNULL(avg(e.experience_years), 0)
    , 2) AS average_years
FROM 
    Project p
LEFT JOIN 
    Employee e
ON 
    p.employee_id = e.employee_id 
   
GROUP BY 
    p.project_id;
