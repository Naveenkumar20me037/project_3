/* to create a database for Books*/
create database BooksDB;

/* to create a table for books*/
create table BooksDB.Books(
books_title varchar(50),
author varchar(50),
genre varchar(20),
publication_year int,
price int primary key);

/* insert the books tables values*/
insert into BooksDB.Books values
("Jungle","Rajput","20th_edition",2005,1999),
("Dora","Charan","28th_edition",2003,600),
("Happy","Kannan","28th_edition",2015,160),
("Sad","Rani_boy","5th_edition",1999,400),
("Life","Charlin","2th_edition",2007,199);

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

/*Update the price of a book*/
alter table BooksDB.Books drop books_title;
select * from BooksDB.Books;

