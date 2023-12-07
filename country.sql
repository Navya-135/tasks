create table data.state(
id int primary key auto_increment,
name varchar(20)not null,
countryid int not null
);

create table data.country(
id int primary key auto_increment,
countryname varchar(20) not null,
pincode int not null,
countryid int not null,
constraint foreign key country_state_countryid(countryid)references data.country(id)
);

alter table data.state
drop foreign key state_ibfk_1;

drop table data.state;

drop table data.country;

insert into data.state(name,countryid)values('cal',1);
insert into data.state(name,countryid)values('ar',2);
insert into data.state(name,countryid)values('ts',3);

select * from data.state;

insert into data.country(countryname,pincode,countryid)values('USA',80999,1);
insert into data.country(countryname,pincode,countryid)values('UK',90555,1);

select * from data.country;

select * from data.state as st
inner join data.country as cou on st.id=cou.countryid;

select * from data.state as st
left join data.country as cou on st.id=cou.countryid;

select * from data.state as st
right join data.country as cou on st.id=cou.countryid;

select * from data.state as st
cross join data.country as cou on st.id=cou.countryid;

select st.id,cou.id from data.state as st
right join data.country as cou on st.id=cou.countryid;




