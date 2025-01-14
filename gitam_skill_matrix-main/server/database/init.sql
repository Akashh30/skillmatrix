-- Check if the database exists, and create it if it doesn't
DO
$$
BEGIN
   IF NOT EXISTS (
      SELECT FROM pg_database
      WHERE datname = 'skillmatrix'
   ) THEN
      CREATE DATABASE skillmatrix;
   END IF;
END
$$;

-- Connect to the skillmatrix database
\c skillmatrix;

-- Create Tables
CREATE TABLE campus (
    campus_id TEXT PRIMARY KEY,
    campus_name TEXT NOT NULL
);

CREATE TABLE school (
    school_id TEXT PRIMARY KEY,
    school_name TEXT NOT NULL,
    campus_id TEXT NOT NULL,
    FOREIGN KEY (campus_id) REFERENCES campus(campus_id)
);

CREATE TABLE department (
    department_id TEXT PRIMARY KEY,
    department_name TEXT NOT NULL,
    school_id TEXT NOT NULL,
    FOREIGN KEY (school_id) REFERENCES school(school_id)
);

CREATE TABLE employee (
    employee_id TEXT PRIMARY KEY,
    employee_mail TEXT NOT NULL,
    employee_name TEXT NOT NULL,
    designation TEXT NOT NULL,
    experience INT NOT NULL,
    department_id TEXT NOT NULL,
    password TEXT NOT NULL,
    FOREIGN KEY (department_id) REFERENCES department(department_id)
);

CREATE TABLE course (
    course_id TEXT PRIMARY KEY,
    course_name TEXT NOT NULL,
    course_category TEXT NOT NULL,
    department_id TEXT NOT NULL,
    course_coordinator TEXT NOT NULL,
    course_champion TEXT NOT NULL,
    caia_coordinator TEXT NOT NULL,
    FOREIGN KEY (department_id) REFERENCES department(department_id)
);

CREATE TABLE skill_type (
    type_id TEXT PRIMARY KEY,
    type_name TEXT NOT NULL,
    type_description TEXT NOT NULL
);

CREATE TABLE skill (
    skill_id TEXT PRIMARY KEY,
    skill_name TEXT NOT NULL,
    skill_description TEXT NOT NULL
);

CREATE TABLE subskill (
    subskill_id TEXT PRIMARY KEY,
    subskill_name TEXT NOT NULL,
    subskill_description TEXT NOT NULL,
    skill_id TEXT NOT NULL,
    required TEXT NOT NULL,
    FOREIGN KEY (skill_id) REFERENCES skill(skill_id)
);

CREATE TABLE rating (
    id TEXT PRIMARY KEY,
    subskill_id TEXT NOT NULL,
    employee_id TEXT NOT NULL,
    rating TEXT NOT NULL,
    FOREIGN KEY (subskill_id) REFERENCES subskill(subskill_id),
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
);

CREATE TABLE course_skill_mapping (
    id TEXT PRIMARY KEY,
    skill_id TEXT NOT NULL,
    course_id TEXT NOT NULL,
    type_id TEXT NOT NULL,
    FOREIGN KEY (skill_id) REFERENCES skill(skill_id),
    FOREIGN KEY (course_id) REFERENCES course(course_id),
    FOREIGN KEY (type_id) REFERENCES skill_type(type_id)
);

CREATE TABLE course_faculty_mapping (
    id TEXT PRIMARY KEY,
    course_id TEXT NOT NULL,
    employee_id TEXT NOT NULL,
    FOREIGN KEY (course_id) REFERENCES course(course_id),
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
);

-- Insert some initial data
INSERT INTO campus (campus_id, campus_name) VALUES ('1', 'Bengaluru');
INSERT INTO school (school_id, school_name, campus_id) VALUES ('1', 'Engineering', '1');
INSERT INTO department (department_id, department_name, school_id) VALUES ('1', 'Computer Science', '1');
INSERT INTO skill_type (type_id, type_name, type_description) VALUES 
('1', 'Preskill', 'Skills required'),
('2', 'Tech/Core', 'Main covered topics'),
('3', 'Domain', 'Domains where it is used'),
('4', 'Tools', 'Software to be used'),
('5', 'Applied Example/Projects', 'Projects developed for this subject');

