#	DDL: CREATE , ALTER , DROP
DROP DATABASE IF EXISTS vk;

CREATE DATABASE vk;

USE vk;

DROP TABLE IF EXISTS users;

CREATE TABLE `users`(
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    #id SERIAL, # BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE
    firstname VARCHAR(50),
    lastname VARCHAR(50) COMMENT 'фамиль...',
    email VARCHAR(50) UNIQUE,
    password_hash VARCHAR(256),
    phone BIGINT UNSIGNED UNIQUE,
    # +7(900) 123-45-67 => 79 001 234 567
    INDEX idx_users_username(firstname, lastname)
) COMMENT 'юзеры...';

DROP TABLE IF EXISTS profiles;

CREATE TABLE profiles(
    user_id BIGINT UNSIGNED NOT NULL PRIMARY KEY,
    gender CHAR(1),
    hometown VARCHAR(100),
    #	birthday DATETIME,
    created_at DATETIME DEFAULT NOW()
);

ALTER TABLE
    profiles
ADD
    CONSTRAINT fk_profiles_user_id FOREIGN KEY (user_id) REFERENCES users(id);

ALTER TABLE
    profiles
ADD
    COLUMN birthday DATETIME;

ALTER TABLE
    profiles
MODIFY
    COLUMN birthday DATE;

ALTER TABLE
    profiles RENAME COLUMN birthday TO date_of_birth;

ALTER TABLE
    profiles DROP COLUMN date_of_birth;

-- CREATE TABLE profiles(
--     user_id BIGINT UNSIGNED NOT NULL PRIMARY KEY,
--     gender CHAR(1),
--     hometown VARCHAR(100),
--     #	birthday DATETIME,
--     created_at DATETIME DEFAULT NOW()
-- );