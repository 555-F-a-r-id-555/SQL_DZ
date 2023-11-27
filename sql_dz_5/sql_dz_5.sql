-- task1

-- Вы работаете с MySQL
-- Введите свой код ниже
-- select* from users;
-- select* from messages;

SELECT
    DENSE_RANK() OVER (ORDER BY message_count DESC) AS sender_rank,
    CONCAT(u.firstname,' ',u.lastname) as fullname,
    message_count
FROM (
    SELECT u.id, COUNT(m.id) AS message_count
    FROM users u
    LEFT JOIN messages m ON u.id = m.from_user_id
    GROUP BY u.id
) AS user_message_count
JOIN users u ON user_message_count.id = u.id
ORDER BY sender_rank;


-- task2

-- Вы работаете с MySQL
-- Введите свой код ниже
-- select * from messages;
/*
SELECT
    m.id AS message_id,
    m.from_user_id AS sender_id,
    m.to_user_id AS receiver_id,
    m.body AS message_body,
    m.created_at AS message_created_at,
    LEAD(m.created_at) OVER (ORDER BY m.created_at) AS lead_time,
    LAG(m.created_at) OVER (ORDER BY m.created_at) AS lag_time,
    TIMESTAMPDIFF(MINUTE, m.created_at, LEAD(m.created_at) OVER (ORDER BY m.created_at)) AS minute_lead_diff,
    TIMESTAMPDIFF(MINUTE, LAG(m.created_at) OVER (ORDER BY m.created_at), m.created_at) AS minute_lag_diff
FROM messages m;
*/

SELECT
    m.id AS message_id,
    m.from_user_id AS sender_id,
    m.to_user_id AS receiver_id,
    m.body AS message_body,
    m.created_at AS message_created_at,
    LEAD(m.created_at) OVER (ORDER BY m.created_at) AS lead_time,
    TIMESTAMPDIFF(MINUTE, m.created_at, LEAD(m.created_at) OVER (ORDER BY m.created_at)) AS minute_lead_diff,
    LAG(m.created_at) OVER (ORDER BY m.created_at) AS lag_time,
    TIMESTAMPDIFF(MINUTE, LAG(m.created_at) OVER (ORDER BY m.created_at), m.created_at) AS minute_lag_diff
FROM messages m;
