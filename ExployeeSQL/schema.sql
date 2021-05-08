CREATE TABLE Departments (
	dept_no INTEGER	NOT NULL,
	dept_name VARCHAR	NOT NULL,
	PRIMARY KEY (dept_no)
);

CREATE TABLE Department_Employees (
	emp_no INTEGER	NOT NULL,
	dept_no INTEGER	NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY(dept_no) REFERENCES Departments (dept_no)
);

CREATE TABLE Department_Manager (
	dept_no INTEGER	NOT NULL,
	emp_no INTEGER	NOT NULL,
	FOREIGN KEY(dept_no) REFERENCES Departments (dept_no),
	FOREIGN KEY(emp_no) REFERENCES Department_Employees (emp_no)
);

CREATE TABLE Employees (
	emp_no INTEGER	NOT NULL,
	emp_title_id VARCHAR	NOT NULL,
	birth_date DATE	NOT NULL,
	first_name VARCHAR	NOT NULL,
	last_name VARCHAR	NOT NULL,
	sex VARCHAR	NOT NULL,
	hire_date DATE,
	PRIMARY KEY (emp_title_id),
	FOREIGN KEY(emp_no) REFERENCES Department_Employees (emp_no)
);

CREATE TABLE Salaries (
	emp_no INTEGER	NOT NULL,
	salary INTEGER	NOT NULL,
	PRIMARY KEY (salary),
	FOREIGN KEY(emp_no) REFERENCES Department_Employees (emp_no)
);

CREATE TABLE Titles (
	title_id VARCHAR	NOT NULL,
	title VARCHAR	NOT NULL,
	PRIMARY KEY (title),
	FOREIGN KEY (title_id) REFERENCES Employees (emp_title_id)
);