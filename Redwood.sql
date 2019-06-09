drop table student cascade constraints;

create table STUDENT (
student_number VARCHAR2(20) PRIMARY KEY,
first_name VARCHAR2(20),
surname VARCHAR2(20),
dob DATE,
prog_code VARCHAR2(6));

insert into STUDENT (student_number, first_name, surname, dob, prog_code)
values ('D020150120', 'Brendan', 'Tierney', to_date('19/01/1995', 'DD/MM/YYYY'), 'DT228B');

insert into STUDENT (student_number, first_name, surname, dob, prog_code)
values ('D020150121', 'Damian', 'Gordon', to_date('20/06/1965', 'DD/MM/YYYY'), 'DT228B');

insert into STUDENT (student_number, first_name, surname, dob, prog_code)
values ('D020150122', 'Deirdre', 'Lawless', to_date('04/10/1973', 'DD/MM/YYYY'), 'DT228B');

insert into STUDENT (student_number, first_name, surname, dob, prog_code)
values ('D020150123', 'Robert', 'Ross', to_date('28/12/2000', 'DD/MM/YYYY'), 'DT228B');

select * from student;
select first_name from student where prog_code = 'DT228B';
select first_name from student where first_name like 'D%';

select * from student where student_number = 'D020150123';

update STUDENT
set prog_code = 'DT228A'
where student_number = 'D020150123';

select * from student where student_number = 'D020150123';


delete from STUDENT where student_number = 'D020150123';
delete from STUDENT where first_name like 'D%';
select * from STUDENT;

select FIRST_NAME from student where prog_code = 'DT228B';
update STUDENT
set prog_code = 'DT228A';
SELECT * FROM STUDENT;

create table COURSE (
COURSE_ID VARCHAR2(20) PRIMARY KEY,
COURSE_CODE VARCHAR2(20),
COURSE_DESCRIPTION VARCHAR2(100));

insert into COURSE (COURSE_ID, COURSE_CODE, COURSE_DESCRIPTION)
values ('110', 'DT228A', 'cOURSE FOR DATA ANALYTICS FULL TIME');

insert into COURSE (COURSE_ID, COURSE_CODE, COURSE_DESCRIPTION)
values ('111', 'DT228B', 'cOURSE FOR DATA ANALYTICS PART TIME');

insert into COURSE (COURSE_ID, COURSE_CODE, COURSE_DESCRIPTION)
values ('112', 'DT227A', 'COURSE FOR ASD FULL TIME');

insert into COURSE (COURSE_ID, COURSE_CODE, COURSE_DESCRIPTION)
values ('114', 'DT227B', 'cOURSE FOR ASD PART TIME');

ALTER TABLE COURSE 
ADD FULL_PART_TIME VARCHAR2(20);

UPDATE course
SET full_part_time = 'FULL TIME'
WHERE course_code= 'DT228A' OR course_code='DT227A';

UPDATE course
SET full_part_time = 'PART TIME'
WHERE course_code= 'DT228B' OR course_code='DT227B';

SELECT * FROM COURSE;

SELECT * FROM STUDENT;

select FIRST_NAME||' '||SURNAME, DOB, COURSE_DESCRIPTION FROM  STUDENT S
LEFT JOIN COURSE C ON S.PROG_CODE = C.COURSE_CODE;

SELECT COURSE_DESCRIPTION , COUNT(*) FROM course JOIN student on course.course_code = student.prog_code GROUP BY course.course_description;

@c:\users\Asish\downloads\master_detail.sql

