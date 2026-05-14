# Write your MySQL query statement below
/*create table Person
(personId int ,lastName varchar(35),firstName varchar(40),unique(personID));
insert into Person values
(1,'Wang','Allen'),
(2,'Alice','Bob');
create table Address
(addressID int,personID int,city varchar(35) default null,state  varchar(35),unique(addresID));
insert into Address values
(1,2,'New York City','New York'),
(2,3,'Leetcode','California');*/
select firstName,lastName,city,state
from Person 
left join 
Address on Person.personID=Address.personID;


