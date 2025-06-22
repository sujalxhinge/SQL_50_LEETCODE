--620. Not Boring Movies

SELECT 
id,movie,description,rating
from Cinema
where id % 2 = 1 AND description != 'boring'
order by rating desc;
