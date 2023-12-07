create table data.product(
id int,
itemname varchar(40)not null,
price int not null
);

create table data.productspecification(
id int primary key auto_increment,
gst  int not null,
total int not null,
productid int not null,
constraint foreign key productspecification_product_productid(productid)references data.product(id)
);

drop table data.productspecification;

alter table data.product modify itemname varchar(40) null;

alter table data.product
add constraint unique_itemname unique(itemname);

alter table data.product
drop index unique_itemname;

alter table data.product
add constraint Chk_itemname_3 check(length(itemname)>=3
);

alter table data.product
drop check Chk_itemname_3;

alter table data.productspecification
drop foreign key productspecification_ibfk_1;

drop table data.product;

alter table data.product
add constraint product_pk_id primary key(id);

insert into data.product(id,itemname,price)values(1,'laptop',250000);
insert into data.product(id,itemname,price)values(2,'heater',1500);
insert into data.product(id,itemname,price)values(3,'bucket',1000);

select * from data.product;

insert into data.productspecification(gst,total,productid)values(15,29888,20);
insert into data.productspecification(gst,total,productid)values(40,40000,30);

select * from data.productspecification;

select * from data.product as pro
inner join data.productspecification as prs on pro.id=prs.productid;

select * from data.product as pro
left join data.productspecification as prs on pro.id=prs.productid;

select * from data.product as pro
right join data.productspecification as prs on pro.id=prs.productid;

select * from data.productspecification
cross join data.product;

select pro.id,prs.id from data.product as pro
 join data.productspecification as prs on pro.id=prs.productid;








