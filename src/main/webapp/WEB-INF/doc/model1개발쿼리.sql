
drop database if exists model1;
create database model1 default character set utf8;


use model1;

create table user (
	userid varchar(50) primary key,
	password varchar(50) not null,
	name varchar(50) not null,
	
)default character set utf8;

insert into user values
('duly', '1234', '둘리' ),
('hani', '1234', '하니'),
('micol', '1234', '마이콜');

alter table user drop role;

select * from user;

select * from user where userid = 'duly' and password = '1234';