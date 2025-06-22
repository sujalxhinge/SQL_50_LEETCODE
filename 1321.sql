--1321. Restaurant Growth

SELECT visited_on,
(
    SELECT sum(amount)
    from customer
    where visited_on between date_sub(c.visited_on,interval 6 day)
    and c.visited_on 
)as amount,
round((
    SELECT sum(amount)/7
    from customer
    where visited_on between date_sub(c.visited_on,interval 6 day)
    and c.visited_on 
),2)as average_amount

from customer c
where visited_on >= (
    select date_add(min(visited_on),interval 6 day)
    FRom customer
)
group by visited_on
order by visited_on