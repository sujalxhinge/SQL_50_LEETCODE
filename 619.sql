--619. Biggest Single Number


SELECT max(num) AS num 
from (
    SELECT num
   FROM MyNumbers 
GROUP BY num
HAVING COUNT(num) = 1
 ) AS unique_numbers;



