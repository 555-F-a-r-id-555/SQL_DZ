-- DROP FUNCTION IF EXISTS vk2.fun;

-- DELIMITER $$
-- $$

CREATE FUNCTION vk2.fun(user_id_to_delete BIGINT UNSIGNED) 
RETURNS BIGINT UNSIGNED MODIFIES SQL DATA
BEGIN
    -- Удаление из таблицы friend_requests
    DELETE FROM friend_requests WHERE initiator_user_id = user_id_to_delete OR target_user_id = user_id_to_delete;

    -- Удаление из таблицы messages
    DELETE FROM messages WHERE from_user_id = user_id_to_delete OR to_user_id = user_id_to_delete;

    -- Удаление из таблицы likes
    DELETE FROM likes WHERE media_id IN (SELECT id FROM media WHERE user_id = user_id_to_delete);

    -- Удаление из таблицы media
    DELETE FROM media WHERE user_id = user_id_to_delete;

    -- Удаление из таблицы profiles
    DELETE FROM profiles WHERE user_id = user_id_to_delete;

    -- Удаление из таблицы users_communities
    DELETE FROM users_communities WHERE user_id = user_id_to_delete;

    -- Удаление из таблицы users
    DELETE FROM users WHERE id = user_id_to_delete;

    -- Возвращение ID удаленного пользователя
    RETURN user_id_to_delete;
END -- $$
-- DELIMITER ;