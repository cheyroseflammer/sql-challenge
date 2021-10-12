CREATE TABLE departments (
    dept_no VARCHAR(10),
    dept_name VARCHAR(255),
    PRIMARY KEY (dept_no)
);

CREATE TABLE titles (
	title_id VARCHAR(10),
	title VARCHAR(255),
	PRIMARY KEY (title_id)
);

CREATE TABLE employees (
    emp_no INT,
    emp_title_id VARCHAR(10),
    birth_date DATE,
    first_name VARCHAR(40),
    last_name VARCHAR(40),
    sex VARCHAR(1),
    hire_date DATE,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
    
);

CREATE TABLE salaries (
	emp_no INT,
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR(10),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(10),
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

