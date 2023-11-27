-- task1
-- Вы работаете с MySQL
-- Введите свой код ниже
-- select* from likes
-- select* from media
-- select* from profiles



/*
SELECT COUNT(likes.id) AS total_likes_under_12
FROM likes
JOIN profiles ON likes.user_id = profiles.user_id
JOIN media ON likes.media_id = media.id
WHERE TIMESTAMPDIFF(YEAR, profiles.birthday, CURDATE()) < 12;
*/


/*
SELECT COUNT(*) 
FROM profiles p 
INNER JOIN media m ON m.user_id = p.user_id
INNER JOIN likes l ON l.user_id = p.user_id
WHERE TIMESTAMPDIFF(YEAR, p.birthday, CURDATE()) < 12;
*/

/*
SELECT COUNT(*) AS total_likes_under_12
FROM likes l
JOIN media  ON l.media_id = media.id
JOIN profiles p ON p.user_id = media.user_id
WHERE TIMESTAMPDIFF(YEAR, p.birthday, CURDATE()) < 12;
*/

SELECT COUNT(*) AS total_likes_under_12
FROM likes l
JOIN media  ON l.media_id = media.id
JOIN profiles p ON  media.user_id = p.user_id
WHERE TIMESTAMPDIFF(YEAR, p.birthday, CURDATE()) < 12;

-- task2

-- Вы работаете с MySQL
-- Введите свой код ниже
/*
SELECT p.gender, COUNT(l.id) AS total_likes
FROM likes l
INNER JOIN profiles p ON l.user_id = p.user_id
GROUP BY p.gender
ORDER BY total_likes DESC;
*/


SELECT COUNT(l.id) AS cnt, p.gender
FROM likes l
JOIN profiles p ON l.user_id = p.user_id
GROUP BY p.gender
ORDER BY cnt DESC;

-- task3

-- Вы работаете с MySQL
-- Введите свой код ниже

/*
SELECT id, firstname, lastname
FROM users u
WHERE NOT EXISTS (
    SELECT 1
    FROM messages m
    WHERE m.from_user_id = u.id
);
*/
/*
SELECT id, CONCAT(firstname, ' ', lastname) AS user
FROM users u
WHERE NOT EXISTS (
    SELECT 1
    FROM messages m
    WHERE m.from_user_id = u.id
);
*/
SELECT id, CONCAT(firstname, ' ', lastname) AS user
FROM users
WHERE id NOT IN (
    SELECT DISTINCT from_user_id
    FROM messages
    WHERE from_user_id IS NOT NULL
);

-- task4

-- Вы работаете с MySQL
-- Введите свой код ниже

/*
SELECT sender_id, firstname
FROM (
    SELECT m.from_user_id AS sender_id, u.firstname, COUNT(*) AS message_count
    FROM messages m
    JOIN users u ON m.from_user_id = u.id
    JOIN friend_requests fr ON (m.from_user_id = fr.initiator_user_id OR m.from_user_id = fr.target_user_id)
                            AND fr.status = 'approved'
    WHERE m.to_user_id = 1 AND m.from_user_id <> 1
    GROUP BY sender_id, firstname
    ORDER BY message_count DESC
    LIMIT 1
) AS sender_messages;
*/

/*
SELECT sender_id, firstname, COUNT(*) AS message_count
FROM (
    SELECT m.from_user_id AS sender_id, u.firstname, m.to_user_id AS receiver_id
    FROM messages m
    JOIN users u ON m.from_user_id = u.id
    JOIN friend_requests fr ON (m.from_user_id = fr.initiator_user_id OR m.from_user_id = fr.target_user_id)
                            AND fr.status = 'approved'
    WHERE (m.to_user_id = 1 OR m.from_user_id = 1)
) AS sender_messages
WHERE receiver_id = 1
GROUP BY sender_id, firstname
ORDER BY message_count DESC
LIMIT 1;
*/

SELECT sender_id, CONCAT(firstname, ' ', lastname) AS full_name, COUNT(*) AS message_count
FROM (
    SELECT m.from_user_id AS sender_id, u.firstname, u.lastname, m.to_user_id AS receiver_id
    FROM messages m
    JOIN users u ON m.from_user_id = u.id
    JOIN friend_requests fr ON (m.from_user_id = fr.initiator_user_id OR m.from_user_id = fr.target_user_id)
                            AND fr.status = 'approved'
    WHERE (m.to_user_id = 1 OR m.from_user_id = 1)
) AS sender_messages
WHERE receiver_id = 1
GROUP BY sender_id, firstname, lastname
ORDER BY message_count DESC
LIMIT 1;
