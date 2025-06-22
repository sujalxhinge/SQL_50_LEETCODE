--1484. Group Sold Products By The Date

SELECT sell_date, count(distinct product)as num_sold,
GROUP_CONCAT(distinct product order by product separator',')as products
FROM Activities
group by sell_date
order by sell_date
