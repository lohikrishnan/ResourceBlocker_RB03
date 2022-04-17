create database ResourceBlockerDB;

use resourceblockerdb;

-- UserProfile Table creation and intialization(only one value for demo)
 
create table userprofile(
userid int not null auto_increment, 
name varchar(30), 
gender varchar(7), 
groupid int, 
phno bigint, 
emailid varchar(50),
primary key(userid) 
);

desc userprofile;

-- drop table userprofile;

insert into userprofile(name, gender, groupid, phno, emailid) values("abc","M", 12, 9876543210, "abc@qwe.com");

select * from userprofile;

-- End of UserProfile table creation and initialization 

-- UserCredentials table creation

create table usercredentials(
usertype varchar(10),
userid int,
password varchar(20),
loginstatus bool,
foreign key(userid) references userprofile(userid)
);

desc usercredentials;

insert into usercredentials(usertype, userid, password, loginstatus) values("Admin", 1, "1234", true);

select * from usercredentials;
-- End of UserCredentials table creation and initialization

-- ReservationDetails table creation and initialization

create table reservationdetails(
reservationid int not null auto_increment,
resourceid int,
userid int,
groupid int,
type varchar(10),
startdate date,
enddate date,
starttime time,
endtime time,
status varchar(15),
primary key(reservationid),
foreign key(userid) references userprofile(userid)
);  
-- End of ReservationDetails table

 