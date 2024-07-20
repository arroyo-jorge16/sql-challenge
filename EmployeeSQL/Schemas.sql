CREATE TABLE departments (
    dept_no VARCHAR(10) NOT NULL,
    dept_name VARCHAR(50) NOT NULL,
    CONSTRAINT pk_departments PRIMARY KEY (dept_no)
);

CREATE TABLE titles (
    title_id VARCHAR(10) NOT NULL,
    title VARCHAR(50) NOT NULL, 
    CONSTRAINT pk_titles PRIMARY KEY (title_id)
);

CREATE TABLE employees (
    emp_no INTEGER NOT NULL,
    emp_title_id VARCHAR(50) NOT NULL REFERENCES titles (title_id),
    birth_date DATE NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    sex VARCHAR(10) NOT NULL,
    hire_date DATE NOT NULL,
    CONSTRAINT pk_employees PRIMARY KEY (emp_no)
);

CREATE TABLE dept_emp (
    emp_no INTEGER NOT NULL REFERENCES employees (emp_no),
    dept_no VARCHAR(50) NOT NULL REFERENCES departments (dept_no),
    CONSTRAINT pk_dept_emp PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE dept_manager (
    dept_no VARCHAR(50) NOT NULL REFERENCES departments (dept_no),
    emp_no INTEGER NOT NULL REFERENCES employees (emp_no),
    CONSTRAINT pk_dept_manager PRIMARY KEY (dept_no, emp_no)
);


CREATE TABLE salaries (
    emp_no INTEGER NOT NULL REFERENCES employees (emp_no),
    salary INTEGER NOT NULL,
    CONSTRAINT pk_salaries PRIMARY KEY (emp_no)
);

