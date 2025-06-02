-- Active: 1748278690724@@127.0.0.1@5432@sajib

CREATE TABLE department (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);
CREATE TABLE employee (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    position VARCHAR(50) NOT NULL,
    salary NUMERIC(10, 2) NOT NULL,
    department_id INT REFERENCES department(department_id) ON DELETE CASCADE
);
INSERT INTO department (department_name) VALUES
('Human Resources'),
('Finance'),
('Engineering'),
('Marketing');

INSERT INTO employee (employee_name, position, salary, department_id) VALUES
('John Doe', 'HR Manager', 60000.00, 1),
('Jane Smith', 'Financial Analyst', 70000.00, 2),
('Alice Johnson', 'Software Engineer', 80000.00, 3),
('Bob Brown', 'Marketing Specialist', 50000.00, 4);

SELECT * FROM employee;
SELECT *
FROM department
CROSS JOIN employee;

SELECT * FROM employee
JOIN department ON employee.department_id = department.department_id;

SELECT * FROM employee
JOIN department USING( department_id );

SELECT department_name, avg(salary) FROM employee
JOIN department USING(department_id)
GROUP BY department_name