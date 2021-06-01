show databases;
create database university;
use university;
create table semester(
student_name varchar (20) not null,
student_id int not null,
course varchar (20) not null,
total_score varchar (20) not null,
recommendation varchar (20) not null,
grade varchar (20) not null,
primary key (student_id)
);
explain semester;

insert into semester (student_name, student_id, course, total_score, grade, recommendation)
values ('Joshua', '001', 'Eng', '85', 'Pass', 'Graduate'),
('Tom', '002', 'Eng', '45', 'Fail', 'Repeat'),
('Andrew', '003', 'Eng', '50', 'Pass', 'Graduate'),
('Mick', '004', 'Eng', '39', 'Fail', 'Repeat'),
('Wayne', '005', 'Eng', '41', 'Fail', 'Repeat'),
('Ali', '006', 'Eng', '15', 'Fail', 'Withdrawn'),
('Bash', '007', 'Eng', '92', 'Pass', 'Graduate'),
('Kevin', '008', 'Eng', '66', 'Pass', 'Graduate'),
('John', '009', 'Eng', '75', 'Pass', 'Graduate'),
('Sade', '010', 'Eng', '72', 'Pass', 'Graduate');

explain semester;
select * from semester;

update semester
set total_score = '20'
where student_id = 6;

select * from semester;

delete from semester
where total_score = 92;
select * from semester;

select student_id from semester;
select student_id, grade from semester;
select * from semester
where recommendation = 'Graduate';

select * from semester order by student_name;