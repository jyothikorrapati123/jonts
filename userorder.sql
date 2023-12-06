create table zomato.user6(
id int primary key auto_increment,
name varchar(50) not null,
email varchar(50)not null,
address varchar(50) not null
);
create table zomato.userorder1(
id int primary key auto_increment,
ordername varchar(45) not null,
orderprice varchar(45) not null,
orderadd varchar(45) not null,
userid int not null
);

alter table zomato.userorder1
add constraint pk_userid_userorder1 foreign key(userid) references zomato.user6(id);

select * from zomato.user6;
select * from zomato.userorder1;

insert into zomato.user6(name, email, address) values('jyo', 'j@gmail.com', 'hyd'),('navya', 'n@gmail.com', 'guntur'),('suji', 's@gmail.com', 'ka');
insert into zomato.userorder1(ordername, orderprice, orderadd, userid)values('biryani', 220, 'hyd', 1),('roti', 100, 'kphb', 2),
('veg biryani', 300,'ammerpet', 5);

select * from zomato.user6 as usr
inner join zomato.userorder1 as usod1 on usr.id = usod1.userid;

select * from zomato.user6 as usr
left join zomato.userorder1 as usod1 on usr.id = usod1.userid;

select * from zomato.user6 as usr
right join zomato.userorder1 as usod1 on usr.id = usod1.userid;



