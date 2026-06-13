#create databse and tables for student task manager application

create database student_task_manager;
use student_task_manager;

# students table

create table students(
student_id int primary key auto_increment,
first_name varchar(20),
last_name varchar(20),
gender varchar(10),
mobile_number varchar(10),
email varchar(30),
course_name varchar(30),
admission_date date
);

insert into students(
first_name,
last_name,
gender,
mobile_number,
email,
course_name,
admission_date
)
values(
'Namrata',
'Majgaonkar',
'Female',
'8778094532',
'namrata@test.com',
'Python',
curdate()
);

select* from students;
drop table students;
UPDATE students 
SET course_name = 'Java'
WHERE student_id = 2;
USE student_task_manager;
SHOW TABLES;
DESCRIBE students;

show databases;



use student_task_manager;

# attendance table

CREATE TABLE attendance (
    attendance_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    attendance_date DATE,
    attendance_status VARCHAR(20),
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);


select * from attendance;
SHOW TABLES;
DESC students;
INSERT INTO attendance ( student_id, attendance_date, attendance_status) 
VALUES ( 1, '2026-6-4', 'Absent');
DELETE from attendance 
WHERE attendance_id = 7;



use student_task_manager;

#tasks table

CREATE TABLE tasks (
    task_id INT PRIMARY KEY AUTO_INCREMENT,
    task_name VARCHAR(200),
    task_description TEXT,
    maximum_marks INT
);

INSERT INTO tasks (task_name, task_description, maximum_marks)
VALUES ('C Programming', 'Solve pattern printing and array problems', 50);
drop table tasks;
select * from tasks;



use student_task_manager;

#student_tasks table

CREATE TABLE student_tasks (
    student_task_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    task_id INT,
    obtained_marks INT,
    submission_date DATE,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (task_id) REFERENCES tasks(task_id)
);

show tables;

ALTER TABLE student_tasks
ADD COLUMN submission_status VARCHAR(50);


describe student_tasks;
select * from student_task;
ALTER TABLE student_tasks
ADD COLUMN remarks TEXT;

describe student_tasks;

DELETE from student_tasks 
WHERE student_tasks_id = 4;



use student_task_manager;

#users table

CREATE TABLE users
(
	user_id INT PRIMARY KEY AUTO_INCREMENT,
    username varchar(100),
    password varchar(100),
    full_name varchar(200)
);
INSERT INTO users
(
	username,
    password,
    full_name
)
VALUES
(
	'admin',
    'admin123',
    'System Administrator'
);
select * from users;
    

