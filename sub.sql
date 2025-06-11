CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50),
    department_name VARCHAR(50),
    salary VARCHAR(50),
    hire_date DATE
);

-- Insert example
INSERT INTO employees (employee_name, department_name, salary, hire_date)
VALUES ('golu', 'IT', '8000', '2024-01-01');


SELECT * FROM employees

