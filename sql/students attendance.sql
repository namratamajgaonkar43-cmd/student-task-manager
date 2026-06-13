USE students_task_manager;

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