use vk2;

-- DROP TRIGGER IF EXISTS vk2.community_name_length_trigger;

DELIMITER //

CREATE TRIGGER community_name_length_trigger
BEFORE INSERT ON communities FOR EACH ROW
BEGIN
    IF CHAR_LENGTH(NEW.name) < 5 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Длина названия сообщества должна быть не менее 5 символов';
    END IF;
END //

DELIMITER ;