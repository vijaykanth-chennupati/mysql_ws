create table if not exists books(
isbn bigint check(isbn>9000),
name varchar(50),
author varchar(50),
author_id integer,
count integer,
primary key(isbn),
foreign key(author_id) references author(id_num)
);

create table if not exists member (
member_id integer check(member_id>7000),
name varchar(50) not null,
email_id varchar(50),
primary key(member_id,email_id)
);

create table if not exists book_transc (
transc_number integer auto_increment,
member_id integer not null,
member_name varchar(50) not null,
book_isbn bigint not null,
book_name varchar(50),
borrowed_date date,
return_date date,
primary key(transc_number),
foreign key (member_id) references member(member_id),
foreign key (book_isbn) references books(isbn)
);
