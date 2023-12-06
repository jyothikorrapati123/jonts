CREATE TABLE `zomato`.`products` (
  `id` INT NULL,
  UNIQUE INDEX `idproduct_UNIQUE` (`id` ASC)
  );

CREATE TABLE `zomato`.`products1` (
  `id` INT NOT NULL,
  `productsname` VARCHAR(45) NULL,
  UNIQUE INDEX `idproducts_UNIQUE` (`id` ASC));

CREATE TABLE `zomato`.`products2` (
  `id` INT NOT NULL,
  `productsname` VARCHAR(45) NULL,
  `productsprice` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE);
  
  drop table zomato.products;
  
  
  create table zomato.products2(
  id int auto_increment,
  productname varchar(40) not null,
  productprice int check(length(productprice)=3)
  );
  
create table zomato.productsspecification1 (
id int auto_increment,
productsname varchar(45) not null,
productsprice varchar(34) not null,
productsfeedback varchar(45)not null,
productscompany varchar(45) default ('arvindh'),
productsid int not null,
constraint foreign key productsspecification1_products1_productsid(productsid) references zomato.prodcutsspecification1(id)
);



insert into zomato.productsspecification(id,productsname,productsprice,productsfeedback)values(1,'shirts','500','good');
select*from zomato.productsspecification;


 create table zomato.productsspecification (
 id int primary key auto_increment,
 productsname varchar(45)not null,
 productsprice varchar(45)not null,
 productsfeedback varchar(45)not null,
 productscompany int check(length(productcompany)=3)

 );

  create table zomato.products2(
  id int auto_increment,
  productname varchar(40) not null,
  productprice int check(length(productprice)=3)
  );
  
  
  create table zomato.productsspecification1 (
id int primary key auto_increment,
productsname varchar(45) not null,
productsprice varchar(34) not null,
productsfeedback varchar(45)not null,
productscompany varchar(45) default ('arvindh'),
productsid int not null,
constraint foreign key productsspecification1_product_productsid(productsid) references zomato.products2(id)

);

alter table zomato.products add column  productscompany varchar(30);

alter table zomato.products2 modify productsprice varchar(6);

alter table zomato.products2 modify productsname varchar(50)null;

alter table zomato.products2 modify productsname varchar(50)not null;

alter table zomato.products2
add constraint unique_productsname unique(productsname);

alter table zomato.products2
drop index unique_productsname;

alter table zomato.products2
add constraint check_productsname_3 check(length(productsname)>=4);

alter table zomato.products2
drop check check_productsname_3;


alter table zomato.products2
add constraint products2_pk_id primary key(id);

alter table zomato.productsspecification1
add constraint fk_productsspecifaction__id foreign key(productsid) references zomato.products2(id);


alter table zomato.productsspecification1
drop foreign key productsspecification1_ibfk_1;


select * from zomato.products2 as prd
inner join zomato.productsspecification1 as prdspc on prd.id=productsid;

select*from zomato.products2 as prd
left join zomato.productsspecification1 as prdspc on prd.id=productsid;


select*from zomato.products2 as prd
right join zomato.productsspecification1 as prdspc on prd.id=productsid;

insert into zomato.productsspecification1(id,productsname,productsprice,productsfeedback,productscompany,productsid)
values(7,'shirts','700','good','aravindhstores',4),
(6,'sarees','600','good','kml',5);

insert into zomato.products2(id,productsname,productsprice)
values(13,'soap','3'),
(12,'fruits','80');








  




 

  
  
