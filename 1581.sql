--1581. Customer Who Visited but Did Not Make Any Transactions

SELECT v.customer_id,COUNT(*) AS count_no_trans
From visits v
LEFT JOIN Transactions t ON v.visit_id = t.visit_id
WHERE t.transaction_id IS NULL
GROUP BY v.customer_id;