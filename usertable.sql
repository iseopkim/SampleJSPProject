create user iseop@localhost identified by 'Password1!';
create database goodmorning;
GRANT ALL PRIVILEGES ON goodmorning.* TO iseop@localhost;
USE goodmorning;
CREATE TABLE usertable (user_id VARCHAR(40) NOT NULL PRIMARY KEY, user_pw VARCHAR(40) NOT NULL);
