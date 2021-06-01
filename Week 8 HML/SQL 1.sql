show databases;
create database university;
use university;
create table students(
student_name varchar (20) not null,
student_id int not null,
course varchar (20) not null,
total_score varchar (20) not null,
grade varchar (20) not null,
primary key (student_id)
);
explain students;
