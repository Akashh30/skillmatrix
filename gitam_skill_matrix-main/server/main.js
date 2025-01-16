
import express, { query } from "express"
import pg from 'pg'
import { create_database } from "./database/schema.js"
import { create_api } from "./api/api.js"
import cors from 'cors'

const app = express()
app.use(cors())

app.use(express.json())

const { Client } = pg
var conString = "postgres://postgres:123456@postgres:5432/skillmatrix";
const client = new Client(conString)
await client.connect(function(err,result){
  if(err){
    console.log("Database connection failed")
  }
  else{
    console.log("Database connected successfully!")
  }
  }
)
// console.log("Database connected successfully!")

// create all tables in postgres database (One time)
// await create_database(client)

const api_links = '<h1><a href="http://localhost:3000/api/campus">Campus</a><br><a href="http://localhost:3000/api/school">School</a><br><a href="http://localhost:3000/api/department">Department</a><br><a href="http://localhost:3000/api/employee">Employee(Teaching Staff)</a><br><a href="http://localhost:3000/api/course">Course</a><br><a href="http://localhost:3000/api/skill">Skill</a><br><a href="http://localhost:3000/api/subskill">Subskill</a><br><a href="http://localhost:3000/api/skill-type">Skill Type</a><br><a href="http://localhost:3000/api/rating">Rating</a><br><a href="http://localhost:3000/api/course-faculty-mapping">Course to Faculty Mapping</a><br><a href="http://localhost:3000/api/course-skill-mapping">Course to Skill Mapping</a><br><a href="http://localhost:3000/api/course-subskill">Course to subskill Mapping</a></h1>'

create_api(app, client)
app.get('/api', async function (req, res) {
  res.send(api_links)
})

app.get('/', function (req, res) {
  res.send('Hello World')
})

app.post('/api/login/', function (req, res) {
  console.log(req.body)
})

app.post('/api/skill/', async function (req, res) {
  const query = `INSERT INTO skill (skill_id, skill_name, skill_description) VALUES ( '${req.body.skillId}', '${req.body.skillName}', '${req.body.skillDescription}');`
  const data = await client.query(query)
  console.log(`${req.body.skillName} skill added to database`)
})

app.post('/api/course/', async function (req, res) {
  const query = `INSERT INTO course (course_id, course_name, course_category,department_id,course_coordinator,course_champion,caia_coordinator) VALUES ( '${req.body.courseId}', '${req.body.courseName}', '${req.body.courseCategory}', 1, '${req.body.courseCoordinator}', '${req.body.courseChampion}', '${req.body.caiaCoordinator}');`
  const data = await client.query(query)
  console.log(`${req.body.courseName} course added to database`)
})

app.post('/api/course-skill-mapping/', async function (req, res) {
  console.log(req.body)
  const data = await client.query(`INSERT INTO course_skill_mapping (id, skill_id, course_id, type_id) VALUES ('${req.body.id}','${req.body.skillId}', '${req.body.courseId}', '${req.body.skillType}');`)
})

app.post('/api/subskill/', async function (req, res) {
  req.body.subskills.forEach(element => {
    let required = (element.required === true) ? 'required' :'optional';
    let query = `INSERT INTO subskill (subskill_id, subskill_name, subskill_description,skill_id,required) VALUES ('${element.id}','${element.subskillName}', '${element.subskillDescription}', '${element.skillId}', '${required}');`
    const data = client.query(query);
    console.log(`${element.subskillName} added to ${element.skillId}`)
  });
  
})

app.post('/api/employee/', async function (req, res) {
  console.log(req.body)
  const data = await client.query(`INSERT INTO employee (employee_id, employee_mail, employee_name, designation, experience, department_id, password) VALUES ('${req.body.employee_id}','${req.body.employee_mail}','${req.body.employee_name}', '${req.body.designation}', '${req.body.experience}', '1', '${req.body.password}');`)
})

app.post('/api/course-faculty-mapping', async function (req, res) {
  console.log(req.body)
  // const data = await client.query(`INSERT INTO course_skill_mapping (id, skill_id, course_id, type_id) VALUES ('${req.body.id}','${req.body.skillId}', '${req.body.courseId}', '${req.body.skillType}');`)
})

app.listen(3000, function (req, res) {
  console.log("Server started at port 3000...")
})

// import express, { query } from "express"
// import pg from 'pg'
// import { create_database } from "./database/schema.js"
// import { create_api } from "./api/api.js"
// import cors from 'cors'

// const app = express()
// app.use(cors())

// app.use(express.json())

// const { Client } = pg
// var conString = "postgres://postgres:123456@postgres:5432/skillmatrix";
// const client = new Client(conString)
// await client.connect(function(err,result){
//   if(err){
//     console.log("Database connection failed")
//   }
//   else{
//     console.log("Database connected successfully!")
//   }
//   }
// )
// // console.log("Database connected successfully!")

// // create all tables in postgres database (One time)
// //await create_database(client)

// const api_links = '<h1><a href="http://localhost:3000/api/campus">Campus</a><br><a href="http://localhost:3000/api/school">School</a><br><a href="http://localhost:3000/api/department">Department</a><br><a href="http://localhost:3000/api/employee">Employee(Teaching Staff)</a><br><a href="http://localhost:3000/api/course">Course</a><br><a href="http://localhost:3000/api/skill">Skill</a><br><a href="http://localhost:3000/api/subskill">Subskill</a><br><a href="http://localhost:3000/api/skill-type">Skill Type</a><br><a href="http://localhost:3000/api/rating">Rating</a><br><a href="http://localhost:3000/api/course-faculty-mapping">Course to Faculty Mapping</a><br><a href="http://localhost:3000/api/course-skill-mapping">Course to Skill Mapping</a><br><a href="http://localhost:3000/api/course-subskill">Course to subskill Mapping</a></h1>'

// create_api(app, client)
// app.get('/api', async function (req, res) {
//   res.send(api_links)
// })

// app.get('/', function (req, res) {
//   res.send('Hello World')
// })

// app.post('/api/login/', function (req, res) {
//   console.log(req.body)
// })

// app.post('/api/skill/', async function (req, res) {
//   const query = `INSERT INTO skill (skill_id, skill_name, skill_description) VALUES ( '${req.body.skillId}', '${req.body.skillName}', '${req.body.skillDescription}');`
//   const data = await client.query(query)
//   console.log(`${req.body.skillName} skill added to database`)
// })

// app.post('/api/course/', async function (req, res) {
//   const query = `INSERT INTO course (course_id, course_name, course_category,department_id,course_coordinator,course_champion,caia_coordinator) VALUES ( '${req.body.courseId}', '${req.body.courseName}', '${req.body.courseCategory}', 1, '${req.body.courseCoordinator}', '${req.body.courseChampion}', '${req.body.caiaCoordinator}');`
//   const data = await client.query(query)
//   console.log(`${req.body.courseName} course added to database`)
// })

// app.post('/api/course-skill-mapping/', async function (req, res) {
//   console.log(req.body)
//   const data = await client.query(`INSERT INTO course_skill_mapping (id, skill_id, course_id, type_id) VALUES ('${req.body.id}','${req.body.skillId}', '${req.body.courseId}', '${req.body.skillType}');`)
// })

// app.post('/api/subskill/', async function (req, res) {
//   req.body.subskills.forEach(element => {
//     let required = (element.required === true) ? 'required' :'optional';
//     let query = `INSERT INTO subskill (subskill_id, subskill_name, subskill_description,skill_id,required) VALUES ('${element.id}','${element.subskillName}', '${element.subskillDescription}', '${element.skillId}', '${required}');`
//     const data = client.query(query);
//     console.log(`${element.subskillName} added to ${element.skillId}`)
//   });
  
// })

// app.listen(3000, function (req, res) {
//   console.log("Server started at port 3000...")
// })
