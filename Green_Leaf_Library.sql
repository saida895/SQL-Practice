create database green_leaf_library;
use green_leaf_library;
drop table Book;
create table Book(
Book_No int primary key,
Title varchar(50) Not null,
Auther varchar(50) ,
genre varchar(50) ,
copies int ,
price int,
Added_On date);
insert into Book(Book_No,Title,Auther,genre,copies,price,Added_On)
values(1,'The Alchemist', 'Paulo Coelho' ,'Fiction',4 ,299.00 ,"2026-01-15"),
	  (2, 'Wings of Fire ','A P J Abdul Kalam',' Biography', 6, 250.00 ,'2026-02-10'),
      (3 ,'Atomic Habits',' James Clear','Self-Help', 3, 499.00 ,'2026-03-05'),
      (4,' Malgudi Days',' R K Narayan', 'Fiction', 5 ,199.00, '2026-04-20'),
      (5,'The Story of My Experiments with Truth' ,'M K Gandhi','Biography',2, 150.00 ,'2026-05-12');
      select*from Book;
      insert into Book(Book_No,Title,Auther)
      values(6,'Ponniyin Selvan',' Kalki Krishnamurthy');
      select Title,price from Book;
      select genre,Title,copies from Book;