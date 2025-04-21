create table students(
id int primary key,
name varchar(100) not null,
email varchar(100) unique,
age int,
marks decimal(10,2)
);

insert into students values(1 ,'Nisha' ,'nisargaramesh2003@gmail.com', 20 ,80.7);
insert into students values(2 ,'Hema' ,'Hemavathi2003@gmail.com', 21 ,90.6);
insert into students values(3 ,'rajesh' ,'rajeshkumar@gmail.com', 22 ,87.6);
insert into students values(4 ,'seetha' ,'seetadevi23@gmail.com', 23 ,83.2);
insert into students values(5 ,'ram' ,'ramdev24@gmail.com', 24 ,90.1);
select * from students where age>21;
update  students set email = 'rahul@gmail.com' where id=5;
delete from students where age<18;
select * from students order by marks desc limit (2) ;

create table students1(
id int primary key,
name varchar(20),
age int
);
create table courses(
course_id int,
student_id int,
course_name varchar(50),
foreign key(student_id) references students1(id)
);
insert into students1 values(1,'rahul',22);
insert into students1 values(2,'priya',21);
insert into students1 values(3,'akash',23);

insert into courses values(101,1,'java');
insert into courses values(102,2,'python');
insert into courses values(103,1,'sql');

select s.name ,c.course_name from students1 s left outer join courses c on s.id=c.student_id;


