
create table data.student(
id int primary key auto_increment,
name varchar(25) not null,
email varchar(50) not null
);

create table data.teacher(
id int primary key auto_increment,
name varchar(20) not null,
subject varchar(20) not null,
teacherid int not null,
constraint foreign key teacher_student_teacherid(teacherid)references data.student(id)
);

alter table data.teacher
drop foreign key teacher_ibfk_1;

insert into data.student(name,email)values('mahalya','m@gmail.com');
insert into data.student(name,email)values('Akhila','a@gmail.com');
insert into data.student(name,email)values('rajesh','r@gmail.com');

select * from data.student;

insert into data.teacher(name,subject,teacherid)values('Manga','hindi',7);
insert into data.teacher(name,subject,teacherid)values('swapna','biology',8);
insert into data.teacher(name,subject,teacherid)values('swetha','physics',10);

select * from data.teacher;


select * from data.student as stu
inner join data.teacher as tech on stu.id=tech.teacherid;

select * from data.student as stu
left join data.teacher as tech on stu.id=tech.teacherid;

select * from data.student as stu
right join data.teacher as tech on stu.id=tech.teacherid;

select * from data.teacher
cross join data.student;

select stu.id, tech.subject from data.student as stu
 join data.teacher as tech on stu.id=tech.teacherid;




alter table data.teacher modify teacherid int null;


