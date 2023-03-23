create database swiggy;

use swiggy;

create table users(user_id int primary key,name varchar(20),email varchar(20),password varchar(20));

create table orders(order_id int primary key,user_id int,r_id int,amount int,date varchar(20),constraint fkc foreign key(user_id) references users(user_id));

create table restaurants(r_id int,r_name varchar(20),cuisine varchar(20),rating float);

create table food(f_id int,f_name varchar(30),type varchar(20));

alter table restaurants add primary key(r_id);

alter table food add primary key(f_id);

create table menu(menu_id int,r_id int,f_id int,price int,constraint fkp foreign key(f_id) references food(f_id));

insert into users values(1,"nitish","nitish@gmail.com","p252h"),(2,"khushboo","khushboo@gmail.com","hxn9b"),(3,"vartika","vartika@gmail.com","9hu7j"),(4,"ankit","ankit@gmail.com","lkko3"),(5,"neha","neha@gmail.com","3i7qm"),(6,"anupama","anupama@gmail.com","46rdw2"),(7,"rishabh","rishabh@gmail.com","4sw123");

insert into restaurants values(1,"dominos","italian",4.1),(2,"kfc","american",3.9),(3,"box8","north indian",4.3),(4,"dosa plaza","south indian",4.6),(5,"china town","chinese",4);

insert into food values(1,"non-veg pizza","non-veg"),(2,"veg pizza","veg"),(3,"choco lava cake","veg"),(4,"chicken wings","non-veg"),(5,"chicken popcorn","non-veg"),(6,"rice meal","veg"),(7,"roti meal","veg"),(8,"masala dosa","veg"),(9,"rava idli","veg"),(10,"schezwan noodles","veg"),(11,"veg manchurian","veg");

insert into menu values(1,1,1,450),(2,1,2,400),(3,1,3,100),(4,2,3,115),(5,2,4,230),(6,2,5,300),(7,3,3,80),(8,3,6,160),(9,3,7,140),(10,4,6,230),(11,4,8,180),(12,4,9,120),(13,5,6,250),(14,5,10,220),(15,5,11,180);

insert into orders values(1001,1,1,550,"2022-05,10"),(1002,1,2,415,"2022-05-26"),(1003,1,3,240,"2022-06-15"),(1004,1,3,240,"2022-06-29"),(1005,1,3,220,"2022-07-10"),(1006,2,1,950,"2022-06-10"),(1007,2,2,530,"2022-06-23");

show tables;

select * from users;

select * from restaurants;

select * from orders;

select * from menu;

select * from food;

