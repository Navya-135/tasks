create table data.user1(
id int,
name varchar(40)not null,
email varchar(40)not null,
phone int check(length(phone)=10)
);

drop table data.userorder;

create table data.userorder(
id int primary key auto_increment,
name varchar(40)not null,
address varchar(40)not null,
location varchar(20)not null,
ordid int not null,
constraint foreign key userorder_user_ordid(ordid) references data.user1(id)
);

alter table data.user1 modify name varchar(40) null;

alter table data.user1
add constraint unique_name unique(name);

alter table data.user1
drop index unique_name;

alter table data.user1
add constraint Chk_name_3 check(length(name)>=3
);

alter table data.user1
drop check Chk_name_3;

alter table data.userorder
drop foreign key userorder_ibfk_1;

drop table data.user1;

alter table data.user1
add constraint user1_pk_id primary key(id);

alter table data.userorder
add constraint fk_userorder_user1_id foreign key(ordid)references data.user1(id);

insert into data.user1(id,name,email,phone)values(1,'Aravind','r@gmail.com',1234567890);
insert into data.user1(id,name,email,phone)values(2,'Karthik','k@gmail.com',1234567890);
insert into data.user1(id,name,email,phone)values(3,'Pavan','p@gmail.com',1234567890);

select * from data.user1;

insert into data.userorder(name,address,location,ordid)values('frock','budawada','guntur',20);
insert into data.userorder(name,address,location,ordid)values('jeans','nagar','Nellore',40);

select *from data.userorder;

select * from data.user1 as u1
inner join data.userorder as uso on u1.id=uso.ordid;

select * from data.user1 as u1
left join data.userorder as uso on u1.id=uso.ordid;

select * from data.user1 as u1
right join data.userorder as uso on u1.id=uso.ordid;

select * from data.userorder
cross join data.user1;

select u1.id,uso.name from data.user1 as u1
join data.userorder as uso on u1.id=uso.ordid;


