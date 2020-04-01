drop user 'test'@'localhost';
flush privileges;
create database if not exists test;

use test;


create user 'test'@'localhost' identified with mysql_native_password by 'password';
grant all on test.* to 'test'@'localhost';