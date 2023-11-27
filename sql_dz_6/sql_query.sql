use vk2;
/*
ALTER TABLE profiles
DROP FOREIGN KEY profiles_ibfk_2;

ALTER TABLE profiles
ADD CONSTRAINT profiles_ibfk_2 
FOREIGN KEY (photo_id) REFERENCES media(id) ON DELETE CASCADE;

ALTER TABLE friend_requests
DROP FOREIGN KEY friend_requests_ibfk_2;

ALTER TABLE friend_requests
ADD CONSTRAINT friend_requests_ibfk_2 
FOREIGN KEY (target_user_id) REFERENCES users(id) ON DELETE CASCADE;
*/


select fun(5);

select fun(7);

select* from users;

select fun(5);

select fun(7);


CALL vk2.fun2(4);

call vk2.fun3(6);