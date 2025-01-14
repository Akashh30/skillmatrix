
export async function create_database(client){

const campus_table = "CREATE TABLE campus (campus_id      TEXT    PRIMARY KEY,campus_name    TEXT NOT NULL);"
const school_table = "CREATE TABLE school (school_id      TEXT    PRIMARY KEY,school_name    TEXT NOT NULL,campus_id    TEXT NOT NULL , FOREIGN KEY (campus_id) REFERENCES campus(campus_id));"
const department_table = "CREATE TABLE department (department_id      TEXT    PRIMARY KEY,department_name    TEXT NOT NULL,school_id    TEXT NOT NULL , FOREIGN KEY (school_id) REFERENCES school(school_id));"
const employee_table = "CREATE TABLE employee (employee_id      TEXT    PRIMARY KEY,employee_mail    TEXT NOT NULL,employee_name    TEXT NOT NULL,designation    TEXT NOT NULL,experience    INT NOT NULL ,department_id    TEXT NOT NULL,password    TEXT NOT NULL, FOREIGN KEY (department_id) REFERENCES department(department_id));"
const course_table = "CREATE TABLE course (course_id      TEXT    PRIMARY KEY,course_name    TEXT NOT NULL,course_category    TEXT NOT NULL,department_id    TEXT NOT NULL ,course_coordinator    TEXT NOT NULL,course_champion    TEXT NOT NULL,caia_coordinator    TEXT NOT NULL, FOREIGN KEY (department_id) REFERENCES department(department_id));"
const skill_type_table = "CREATE TABLE skill_type (type_id      TEXT    PRIMARY KEY,type_name    TEXT NOT NULL,type_description    TEXT NOT NULL);"
const skill_table = "CREATE TABLE skill (skill_id      TEXT    PRIMARY KEY,skill_name    TEXT NOT NULL,skill_description    TEXT NOT NULL);"
const subskill_table = "CREATE TABLE subskill (subskill_id      TEXT    PRIMARY KEY,subskill_name    TEXT NOT NULL,subskill_description    TEXT NOT NULL,skill_id    TEXT NOT NULL,required    TEXT NOT NULL , FOREIGN KEY (skill_id) REFERENCES skill(skill_id));"
const rating_table = "CREATE TABLE rating (id TEXT PRIMARY KEY,subskill_id  TEXT NOT NULL,employee_id  TEXT NOT NULL,rating  TEXT NOT NULL,FOREIGN KEY (subskill_id) REFERENCES subskill(subskill_id),FOREIGN KEY (employee_id) REFERENCES employee(employee_id));"
const course_skill_mapping_table = "CREATE TABLE course_skill_mapping (id TEXT PRIMARY KEY,skill_id  TEXT NOT NULL,course_id  TEXT NOT NULL,type_id    TEXT NOT NULL,FOREIGN KEY (skill_id) REFERENCES skill(skill_id),FOREIGN KEY (course_id) REFERENCES course(course_id), FOREIGN KEY (type_id) REFERENCES skill_type(type_id));"
const course_faculty_mapping_table = "CREATE TABLE course_faculty_mapping (id TEXT PRIMARY KEY,course_id  TEXT NOT NULL,employee_id  TEXT NOT NULL,FOREIGN KEY (course_id) REFERENCES course(course_id),FOREIGN KEY (employee_id) REFERENCES employee(employee_id));"

const create_tables_query = [campus_table,school_table,department_table,employee_table,course_table,skill_type_table,skill_table,subskill_table,rating_table,course_skill_mapping_table,course_faculty_mapping_table]



create_tables_query.forEach(create_table_query => {
    const res = client.query(create_table_query)
});
console.log("Tables created!")

}
