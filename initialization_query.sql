create database goodmorning;
GRANT ALL PRIVILEGES ON goodmorning.* TO iseop;
USE goodmorning;
CREATE TABLE usertable (user_id VARCHAR(20) NOT NULL PRIMARY KEY, user_pw VARCHAR(20) NOT NULL);
