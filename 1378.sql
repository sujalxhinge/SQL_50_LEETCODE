--1378. Replace Employee ID With The Unique Identifier

SELECT eu.unique_id, et.name
From Employees et
LEFT JOIN EmployeeUNI eu
on eu.id = et.id;

