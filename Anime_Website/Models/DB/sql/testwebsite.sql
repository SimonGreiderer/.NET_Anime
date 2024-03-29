drop database if exists testwebsite; 

create database testwebsite collate utf8mb4_general_ci; 

use testwebsite; 

create table users(
	user_id int unsigned not null auto_increment, 
	username varchar(50) not null unique,
	password varchar(300) not null, 
	email varchar(150) not null, 
	profilpicture varchar(1000000), 
	constraint user_id_PK primary  key(user_id)
);

insert into users values(null, "Kristof", sha2("Hallo123!", 512), "k@gmail.com", "");
insert into users values(null, "Johannes", sha2("Hallo123!", 512), "j@gmail.com", "");
insert into users values(null, "Gabi", sha2("alsdjf!", 512), "n@gmail.com", "");

select * from users; 