-- DROP PROCEDURE IF EXISTS vk2.fun;

-- DELIMITER $$
-- $$

CREATE PROCEDURE vk2.fun3(user_id_to_delete BIGINT UNSIGNED)
BEGIN
    DECLARE user_exists INT;

    -- Проверка наличия user_id_to_delete в таблице users
    SELECT COUNT(*) INTO user_exists FROM users WHERE id = user_id_to_delete;

    IF user_exists > 0 THEN
        -- Если user_id_to_delete найден, выполняем удаление
        START TRANSACTION;

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

        COMMIT;

        -- Возвращение ID удаленного пользователя
        SELECT user_id_to_delete;
    ELSE
        -- Если user_id_to_delete не найден, выдаем сообщение
        SELECT 'ТАКОГО ID НЕТ';
    END IF;
END -- $$
-- DELIMITER ;
