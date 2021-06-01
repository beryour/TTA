use university;
create table semester2(
student_name varchar (20) not null,
student_id int not null,
course varchar (20) not null,
total_score varchar (20) not null,
recommendation varchar (20) not null,
grade varchar (20) not null,
primary key (student_id)
);
explain semester2;
insert into semester2 (student_name, student_id, course, total_score, grade, recommendation)
values ('Joshua', '001', 'Comp', '78', 'Pass', 'Graduate'),
('Tom', '002', 'Comp', '62', 'Pass', 'Pending'),
('Andrew', '003', 'Comp', '31', 'Fail', 'Pending'),
('Mick', '004', 'Comp', '22', 'Fail', 'Withdrawn'),
('Wayne', '005', 'Comp', '88', 'Pass', 'Pending'),
('Ali', '006', 'Comp', '11', 'Fail', 'Withdrawn'),
('Bash', '007', 'Comp', '81', 'Pass', 'Graduate'),
('Kevin', '008', 'Comp', '69', 'Pass', 'Graduate'),
('John', '009', 'Comp', '69', 'Pass', 'Graduate'),
('Sade', '010', 'Comp', '84', 'Pass', 'Graduate');
explain semester2;
select * from semester2;

explain semester;

select semester.student_id, semester2.student_id
from semester
inner join semester2
on semester.student_id = semester2.student_id;
#Running a query
select * from semester, semester2
where semester.student_id = semester2.student_id and semester2.grade = 'Fail'

#Simple data filtering (Comparison)
select * from semester
where total_score between 0 and 40;

select * from semester2
where total_score between 0 and 40;