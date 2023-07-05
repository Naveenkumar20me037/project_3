/* to create a database for Books*/
create database BooksDB;
use BooksDB;

/* to create a table for books*/
create table BooksDB.Books(
book_id int primary key auto_increment,
books_title varchar(50),
author varchar(50) ,
genre varchar(20),
publication_year int,
price int );

/* insert the books tables values*/
insert into BooksDB.Books values
(1,"Jungle","Rajput","20th_edition",2005,1999),
(3,"Dora","Charan","28th_edition",2003,600),
(2,"Happy","Kannan","28th_edition",2015,160),
(4,"Sad","Rani_boy","5th_edition",1999,400),
(5,"Life","Charlin","2th_edition",2007,199);

/* to display the Books details*/
select * from BooksDB.Books;
drop table BooksDB.Books;

/*Retrieve the details of a book based on its title*/
select books_title,author,genre,publication_year,price from BooksDB.Books
where books_title="Life";
select * from BooksDB.Books;

/*Update the price of a book*/
update BooksDB.Books set price=6006 where price=400;
select * from BooksDB.Books;

/*Delete a book from the database based on its title*/
delete from BooksDB.Books where books_title="Dora";
select * from BooksDB.Books;

/*to calculate and display the average price of all the books in the database*/
select avg(price) from BooksDB.Books;

/* to create a database for Author*/
create table BooksDB.Author(
Book_id int ,
author varchar(50),
foreign key (book_id) references books(Book_id)
);

insert into BooksDB.Author values
(1,"Dankin"),
(2,"Raj"),
(3,"Selvan"),
(4,"Charlin"),
(5,"Rani_boy");

select * from BooksDB.Author;
drop table BooksDB.Author;

use BooksDB;
select Books.book_id,books_title,Books.author,Books.genre,Books.publication_year,Books.price
from BooksDB.Books
inner join Author
on Books.book_id=Author.Book_id
order by Author;
select * from BooksDB.Books;
select * from BooksDB.Author;
