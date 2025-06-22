--596. Classes With at Least 5 Students

SELECT class 
from courses
group by class
having count(student)>=5;

