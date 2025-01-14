
export async function create_api(app, client){

    app.get('/api/campus/', async function (req, res) {
        const data = await client.query('SELECT * FROM campus ORDER BY campus_id ASC ')
        res.send(data.rows)
      })

    app.get('/api/school/', async function (req, res) {
        const data = await client.query('SELECT * FROM school ORDER BY school_id ASC ')
        res.send(data.rows)
      })

    app.get('/api/department/', async function (req, res) {
        const data = await client.query('SELECT * FROM department LEFT JOIN school ON department.school_id = school.school_id ORDER BY department_id ASC ')
        res.send(data.rows)
      })
      
    app.get('/api/employee/', async function (req, res) {
        const data = await client.query('SELECT * FROM employee LEFT JOIN department ON employee.department_id = department.department_id LEFT JOIN school ON department.school_id = school.school_id ORDER BY employee_id ASC ')
        res.send(data.rows)
      })

    app.get('/api/course/', async function (req, res) {
        const data = await client.query('SELECT * FROM course LEFT JOIN department ON course.department_id = department.department_id LEFT JOIN school ON department.school_id = school.school_id ORDER BY course.course_id ASC ')
        res.send(data.rows)
      })
      
    app.get('/api/skill/', async function (req, res) {
        const data = await client.query('SELECT * FROM skill ORDER BY skill_id ASC ')
        res.send(data.rows)
      })
      
    app.get('/api/subskill/', async function (req, res) {
        const data = await client.query('SELECT * FROM subskill LEFT JOIN skill ON subskill.skill_id = skill.skill_id ORDER BY subskill_id ASC ')
        res.send(data.rows)
      })
      
    app.get('/api/skill-type/', async function (req, res) {
        const data = await client.query('SELECT * FROM skill_type ORDER BY type_id ASC ')
        res.send(data.rows)
      })


    app.get('/api/course-faculty-mapping/', async function (req, res) {
        const data = await client.query('SELECT * FROM course_faculty_mapping ORDER BY id ASC ')
        res.send(data.rows)
      })

    app.get('/api/course-skill-mapping/', async function (req, res) {
      const data = await client.query('SELECT * FROM course_skill_mapping LEFT JOIN skill ON course_skill_mapping.skill_id = skill.skill_id LEFT JOIN course ON course_skill_mapping.course_id = course.course_id LEFT JOIN skill_type ON course_skill_mapping.type_id = skill_type.type_id LEFT JOIN department ON course.department_id = department.department_id LEFT JOIN school ON department.school_id = school.school_id ORDER BY id ASC' )
      res.send(data.rows)
      })

    
    app.get('/api/rating/', async function (req, res) {
        const data = await client.query('SELECT * FROM rating ORDER BY id ASC ')
        res.send(data.rows)
      })

    
      app.get('/api/course-subskill/', async function (req, res) {
        const data = await client.query('SELECT * FROM course_skill_mapping LEFT JOIN skill ON course_skill_mapping.skill_id = skill.skill_id LEFT JOIN course ON course_skill_mapping.course_id = course.course_id LEFT JOIN skill_type ON course_skill_mapping.type_id = skill_type.type_id LEFT JOIN department ON course.department_id = department.department_id LEFT JOIN school ON department.school_id = school.school_id LEFT JOIN subskill on course_skill_mapping.skill_id = subskill.skill_id ORDER BY id ASC' )
        res.send(data.rows)
      })
    
      app.get('/api/test/', async function (req, res) {
        const data = await client.query('SELECT * FROM course_skill_mapping LEFT JOIN skill ON course_skill_mapping.skill_id = skill.skill_id LEFT JOIN course ON course_skill_mapping.course_id = course.course_id LEFT JOIN skill_type ON course_skill_mapping.type_id = skill_type.type_id LEFT JOIN department ON course.department_id = department.department_id LEFT JOIN school ON department.school_id = school.school_id LEFT JOIN subskill on course_skill_mapping.skill_id = subskill.skill_id ORDER BY id ASC' )
        res.send(data.rows)
      })

    console.log("APIs created!")
    
    }