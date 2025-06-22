--570. Managers with at Least 5 Direct Reports


SELECT e.name
FROM Employee e
WHERE e.id IN(
SELECT managerId
FROM Employee
WHERE managerId IS NOT NULL
GROUP BY managerId 
HAVING COUNT(*) >=5
);