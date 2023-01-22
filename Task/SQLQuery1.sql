create table Customers(
CustomerIDs int primary key identity,
CustomerNames nvarchar(100),
CustomerAges int,
IdCity int,
CustomerPhone int,
CustomerEmail nvarchar(100),
CustomerPhoto nvarchar(100),
foreign key (IdCity) references Cities(CityId)
)

drop table Customers

create table Cities(
CityId int primary key identity,
CityName nvarchar(100),
)

drop table Cities


insert into Customers values('ali' , 20 , 1 , 078999666, 'ali@gmai.com' , 'img/ihh.jpg')
insert into Customers values( 'wesam' , 30 , 2 , 078999766, 'wesam@gmai.com' , 'img/hyh.jpg')
insert into Customers values( 'ali2' , 25 , 3 , 0789997766, 'ffrr@gmai.com' , 'img/hrh.jpg')
insert into Customers values( 'ali3' , 27 , 4 , 0789996686, 'ffrree@gmai.com' , 'img/hwh.jpg')

insert into Cities values('Jarash')
insert into Cities values('Irbid')
insert into Cities values('Amman')
insert into Cities values('Aqaba')
insert into Cities values('Al-Zarqa')
insert into Cities values('Ajluon')

select * from Customers
select * from Cities