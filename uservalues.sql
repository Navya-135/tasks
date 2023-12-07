create table data.user(
id int primary key auto_increment,
name varchar(40) not null,
email varchar(40)not null,
phone int check(length(phone)=10)
);

create table data.userverification(
id int primary key auto_increment,
street varchar(40) not null,
location varchar(20) not null,
city varchar(20) not null,
state varchar(20) not null,
userid int not null,
constraint foreign key userverification_user_userid(userid) references data.user(id)


insert into data.user(name,email,phone)values('navya','n@gmail.com',1234567890);
insert into data.user(name,email,phone)values('aravind','a@gmail.com',1234567890);
insert into data.user(name,email,phone)values('raj','r@gmail.com',1234567890);

select * from data.user;
alter table data.userverification
drop foreign key userverification_ibfk_1;

insert into data.userverification(street,location,city,state,userid)values('akhila','budawada','guntur','AP',10);
insert into data.userverification(street,location,city,state,userid)values('harshitha','kphb','hyd','TS',20);

select * from  data.userverification;

select * from data.user as usr
inner join data.userverification as usrv on usr.id=usrv.userid;

select * from data.user as usr
left join data.userverification as usrv on usr.id=usrv.userid;

select * from data.user as usr
cross join data.userverification as usrv on usr.id=usrv.userid;

select usr.name,usrv.city from data.user as usr
 join data.userverification as usrv on usr.id=usrv.userid;

select * from data.user as usr
right join data.userverification as usrv on usr.id=usrv.userid;




