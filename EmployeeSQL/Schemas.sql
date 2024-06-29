CREATE TABLE departments (
    dept_no VARCHAR(10),
    dept_name VARCHAR(50),
	Last_updated timestamp default Localtimestamp NOT NULL,
	CONSTRAINT pk_departments 
	PRIMARY KEY (dept_no)
);
---

CREATE TABLE dept_emp (
    emp_no INTEGER,
    dept_no VARCHAR(50),
	"last_updated" timestamp default localtimestamp  NOT NULL,
    CONSTRAINT pk_dept_emp PRIMARY KEY ("emp_no")
);


CREATE TABLE dept_manager (
    dept_no VARCHAR(50),
	emp_no INTEGER,
    Foreign Key(emp_no) REFERENCES employees(emp_no), 
	PRIMARY KEY (dept_no, emp_no),
	Foreign Key(dept_no) REFERENCES departments(dept_no)
	
);

CREATE TABLE employees (
    emp_no INTEGER,
	emp_title_id VARCHAR(50),
	birth_date DATE,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	sex VARCHAR(10),
	hire_date DATE,
    CONSTRAINT pk_employees 
	PRIMARY KEY (emp_no)
);

CREATE TABLE salaries (
    emp_no INTEGER,
	salary INTEGER,
    CONSTRAINT pk_salaries
	PRIMARY KEY (emp_no)
);

CREATE TABLE titles (
    title_id VARCHAR(10),
	title VARCHAR(50),
    CONSTRAINT pk_titles 
	PRIMARY KEY (title_id)
);
