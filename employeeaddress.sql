create table data.employee(
id int,
name varchar(40) not null,
email varchar(40)not null
);



create table data.employeeaddress(
id int primary key auto_increment,
state varchar(20) not null,
country varchar(40) not null,
empid int not null,
constraint foreign key employeeaddress_employee_emid(empid)references data.employee(id)
);

drop table data.employeeaddress;

alter table data.employee modify name varchar(40) null;

alter table data.employee
add constraint unique_name unique(name);

alter table data.employee
drop index unique_name;

alter table data.employee
add constraint Chk_name_3 check(length(name)>=3
);

alter table data.employee
drop check Chk_name_3;

alter table data.employeeaddress
drop foreign key employeeaddress_ibfk_1;

drop table data.employee;

alter table data.employee
add constraint employee_pk_id primary key(empid);

alter table data.employeeaddress
add constraint fk_employeeaddress_employee_id foreign key(empid)references data.employee(id);

insert into data.employee(id,name,email)values(1,'Mallika','m@gmail.com');
insert into data.employee(id,name,email)values(2,'Sowji','s@gmail.com');
insert into data.employee(id,name,email)values(3,'Pranathi','p@gmail.com');

select * from data.employee;

insert into data.employeeaddress(state,country,empid)values('AP','India',10);
insert into data.employeeaddress(state,country,empid)values('chicago','USA',20);

select * from data.employeeaddress;

select * from data.employee as emp
inner join data.employeeaddress as emps on emp.id=emps.empid;

select * from data.employee as emp
left join data.employeeaddress as emps on emp.id=emps.empid;

select * from data.employeeaddress
cross join data.employee;

select emp.id,emps.id from data.employee as emp
 join data.employeeaddress as emps on emp.id=emps.empid;





