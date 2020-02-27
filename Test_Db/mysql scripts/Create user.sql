create database if not exists test;

use test;


create user 'test'@'localhost' identified by 'password';
grant all on test.* to 'test'@'localhost';