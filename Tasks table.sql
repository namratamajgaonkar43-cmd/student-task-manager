use student_task_manager;

drop table tasks;
select * from tasks;

CREATE TABLE tasks (
    task_id INT PRIMARY KEY AUTO_INCREMENT,
    task_name VARCHAR(200),
    task_description TEXT,
    maximum_marks INT
);

INSERT INTO tasks (task_name, task_description, maximum_marks)
VALUES ('C Programming', 'Solve pattern printing and array problems', 50);

TRUNCATE TABLE tasks;
DELETE from tasks 
WHERE tasks_name = 'ML Lab';