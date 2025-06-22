--550. Game Play Analysis IV

WITH FirstLogin AS (
    SELECT player_id, MIN(event_date) AS first_login
    FROM Activity
    GROUP BY player_id
),
NextDayLogin AS (
    SELECT a.player_id
    FROM Activity a
    JOIN FirstLogin f
    ON a.player_id = f.player_id
    WHERE a.event_date = DATE_ADD(f.first_login, INTERVAL 1 DAY)
)

SELECT 
    ROUND(COUNT(DISTINCT n.player_id) * 1.0 / (SELECT COUNT(*) FROM FirstLogin), 2) AS fraction
FROM 
    NextDayLogin n;
