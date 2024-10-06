create table students(
	student_id serial,
	name varchar(20),
	major varchar(20),
	primary key(student_id)
);

insert into students(name,major)
values('小白','歷史');

insert into students(major,name)
values('生物','小黑');

insert into students(major,name)
values(NULL,'小藍');

select * from students;

insert into students(major,name)
values('歷史','小綠'),('生物','小灰')
returning *;
