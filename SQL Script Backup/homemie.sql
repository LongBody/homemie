create database HomemieProject

create table room (
id INT  NOT NULL identity(0,1) primary key,
roomName nvarchar(255),
name nvarchar(255),
searchName varchar(255),
detailImageRoom1 varchar(100),
detailImageRoom2 varchar(100),
detailImageRoom3 varchar(100),
price int,
star int,
quantityBed int,
imageRoom varchar(255),
descriptions nvarchar (1000),
isLike bit ,
isActive bit,
isExist bit,
foreign key (name ) references place (name)
)

select * from room where isExist = 0
select * from room where name =  N'Đà lạt'
select * from room where idRoomName =  N'White Villas 1'
select * from room order by price asc ,  idRoomName  OFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY;
select * from room  order by idRoomName  OFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY;
Select * from room where searchName like '%DA LAt%'

UPDATE room
SET  idRoomName = ''
WHERE email = 'longnt1120@gmail.com'

Drop table room

create table place (
name nvarchar(255) primary key,
imageLink varchar(255)
)
Select * from place



create table account (
email varchar(255) primary key,
name nvarchar(255),
phone varchar(255),
password varchar(255),
role varchar(255)
)


UPDATE account
SET password = 'long12345'
WHERE email = 'longnt1120@gmail.com'

Drop table account
select * from account
select * from account where email = 'longnt1120@gmail.com'  and password = 'admin'


create table likeList (
idList INT  NOT NULL identity(0,1) ,
email varchar(255) ,
idRoom int ,
foreign key (idRoom ) references room (id),
foreign key (email ) references account (email)
)

Select * from likeList where email = 'longnt1120@gmail.com'

create table carRent (
email varchar(255) ,
idBooking INT  NOT NULL identity(0,1) ,
dobBefore varchar(255),
dobAfter varchar(255),
quantity int,
price int,
primary key (idBooking ),
foreign key (email ) references account (email)
)
Drop table likeList

Select * from carRent where email ='longnt1120@gmail.com'

create table bookingDetail (
email varchar(255) ,
idRoom int ,
idBooking INT  NOT NULL identity(0,1) ,
imageRoom nvarchar(255),
dobBefore varchar(255),
dobAfter varchar(255),
quantity int,
price int,
primary key (idRoom , idBooking ),
foreign key (idRoom ) references room (id),
foreign key (email ) references account (email)
)

Drop table bookingDetail
select * from bookingDetail

drop database HomemieProject

