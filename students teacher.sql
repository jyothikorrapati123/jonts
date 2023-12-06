create table zomato.student(
id int  auto_increment,
sname varchar(50) not null,
smarks int not null,
collegename varchar(50) not null
);

create table zomato.teacher(
id int primary key auto_increment,
tname varchar(45) not null,
subject varchar(45) not null,
email varchar(45) null,
tid int not null,
constraint foreign key teacher_student_tid(tid) references zomato.student(id)
);

alter table zomato.student
add constraint student_pk_id primary key(id);

alter table zomato.teacher
add constraint fk_teacher_student_id foreign key(student) references zomato.student(id);

alter table zomato.teacher
drop foreign key teacher_ibfk_1;

select * from zomato.student;
insert into zomato.student(id,sname,smarks,collegename)
values(6,'jyothi',50,'s.m.e.w'),
(7,'mani',60,'VKC'),
(8,'akkhi',40,'vkc');

select * from zomato.teacher;
insert into zomato.teacher(id,tname,subject,email,tid)
values(5,'srisha','english','sri@gmail.com',1),
(6,'anusri','maths','anu@gmail.com',null);

alter table zomato.teacher modify tid int null;

select * from zomato.student as stu
inner join zomato.teacher as th on stu.id=th.tid;

select * from zomato.student as stu
left join zomato.teacher as th on stu.id=th.tid;

select * from zomato.student as stu
right join zomato.teacher as th on stu.id=th.tid;

