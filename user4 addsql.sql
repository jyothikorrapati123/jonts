create table zomato.user4 (
id int primary key auto_increment,
name varchar(50) not null,
email varchar(50) null,
phone int check(length(phone) =10)
);


alter table zomato.user4
add constraint unique_name unique(name);

alter table zomato.user4
add constraint chk_name_4 check(length(name)>=3);

alter table zomato.user4
drop check chk_name_4;

alter table zomato.user4
drop index unique_name;


alter table zomato.user4 modify name varchar(50) null;

alter table zomato.user4 add column gender varchar(10);


alter table zomato.user4 modify gender varchar(6);

alter table zomato.user4 drop column gender;






select* from zomato.user4;
select* from zomato.useraddress;


create table zomato.useraddress (
id int primary key auto_increment,
street varchar(50) not null,
location varchar(50) not null,
city varchar(50) not null,
state varchar(20) not null,
country varchar(10) default('india'),
userid int not null,
constraint foreign key useraddress_user_userid (userid) references zomato.user4(id)
);