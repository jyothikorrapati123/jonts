use zomato;
drop table zomato.country;
drop table zomato.state
create table zomato.country(
id int primary key auto_increment,
countryname varchar(40) null,
pincode int not null

);

create table zomato.state(
id int primary key auto_increment,
name varchar(30) null,
statename varchar(30) not null,
district varchar(40) null,
country_id int not null
);

insert into zomato.country(countryname, pincode) values('india', 1234),('china', 67890), ('usa', 5643);
insert into zomato.state(name, statename, district, country_id)values('ss','ap', 'guntur', 1), ('s', 'ts', 'hyd', 2),('f', 'ka', 'ba', 3); 

alter table zomato.country



alter table zomato.state
add constraint pk_country_id foreign key state(country_id) references zomato.country(id);


select * from zomato.country as cou
left join zomato.state as sta on cou.id =sta.country_id;

select * from zomato.country as cou
inner join zomato.state as sta on cou.id =sta.country_id;

select * from zomato.country as cou
right join zomato.state as sta on cou.id =sta.country_id;

 