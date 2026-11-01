create database spice_garden;
use spice_garden;
create table categories(
Category_no int primary key,
Category_name varchar(20) not null unique);

insert into categories(Category_no,Category_name)
values (1,'Starters'),     
       (2,'Main Course'),
       (3,'Desserts');
select* from categories;

	create table menu_items(
item_number int primary key,
item_name varchar(20) Not null,
Category_no int ,
price int not null ,
Availability varchar(20) default 'Yes',
foreign key(Category_no) references categories(Category_no)
);
drop table menu_items;
select * from menu_items;
insert into menu_items (item_number,item_name,Category_no,price,Availability)
values	(1,'Chicken 65',1,180.00,default),
         (2,'Veg Spring Roll',1,120.00,default),
         (3,'Chicken Biryani',2,250.00,default),
         (4,'Paneer Butter Masala',2,220.00,'no'),
         (5,'Gulab Jamun',3,80.00,default);
         -- (5,'fried rice',1,220,'no') 
      --   (6,'fried rice',7,200,'yes')
       --  (6,2,230,'no')
		(-- 6,'Chicken 65',2,99,'yes')
describe menu_items;
describe categories;
alter table menu_items add  column spice_level varchar(20);
alter table menu_items modify column item_name varchar(80);
alter table menu_items rename column Availability to in_stock;
alter table menu_items drop column spice_level;
create table offers_test(
buyonegetone varchar(50),
discount int);
select *from offers_test;
drop table offers_test;
drop table categories;
