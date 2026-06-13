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