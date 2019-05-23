create database db;
use db;
create table user(
 user_id int(20) primary key auto_increment,
 user_name varchar(50),
 sex varchar(2),
 birth_place varchar(20),
 clazz varchar(10),
 user_no varchar(10),
 address varchar(100)

);