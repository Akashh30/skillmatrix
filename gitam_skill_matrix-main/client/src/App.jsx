// import { useState } from 'react'
// import 'bootstrap/dist/css/bootstrap.min.css';
// import {
//   BrowserRouter as Router,
//   Routes,
//   Route,
//   Link
// } from 'react-router-dom';
// import './App.css'
// import Login from './components/Login';
// import CourseForm from './components/CourseForm';
// import SkillForm from './components/SkillForm';
// import CourseSkillMapping from './components/CourseSkillMapping';
// import Navigation from './components/Navigation';
// import SubskillsForm from './components/SubskillsForm';
// import DisplayCourses from './components/DisplayCourses';
// import DisplaySkillMapping from './components/DisplaySkillMapping';
// import DisplaySkills from './components/DisplaySkills';
// import WorkInProgress from './components/WorkInProgress';
// import DisplayCourseSubskillMapping from './components/DisplayCourseSubskillMapping';
// import DisplayFaculty from './components/DisplayFaculty';
// import FacultyForm from './components/FacultyForm';

// function App() {
//   const [count, setCount] = useState(0)

//   return (
//     <>
//       <Router>
//       <Navigation />

//       {/* Define the route pages here */}
//       <Routes>

//         {/* Faculty Routes */}
//         <Route path="/faculty/add" element={<FacultyForm/>} />
//         <Route path="/faculty/view" element={<DisplayFaculty/>} />

//         {/* Course Routes */}
//         <Route path="/course/add" element={<CourseForm />} />
//         <Route path="/course/view" element={<DisplayCourses/>} />

//         {/* Skill Routes */}
//         <Route path="/skill/add" element={<WorkInProgress/>} />
//         <Route path="/skill/view" element={<DisplaySkills/>} />

//         {/* Subskill Routes */}
//         <Route path="/subskill/add" element={<WorkInProgress/>} />
//         <Route path="/subskill/view" element={<DisplayCourseSubskillMapping/>} />

//         {/* Skill Mapping Routes */}
//         <Route path="/skill-mapping/add" element={<CourseSkillMapping />} />
//         <Route path="/skill-mapping/view" element={<DisplaySkillMapping/>} />

//         {/* Faculty Mapping Routes */}
//         <Route path="/faculty-mapping/add" element={<WorkInProgress/>} />
//         <Route path="/faculty-mapping/view" element={<WorkInProgress/>} />

//         {/* Rating Routes */}
//         <Route path="/rating/add" element={<WorkInProgress/>} />
//         <Route path="/rating/view" element={<WorkInProgress/>} />

//         {/* Login Route */}
//         <Route path="/login" element={<Login />} />
//       </Routes>
//     </Router>

    
//       {/* <Login/> */}
//       {/* <CourseForm/> */}
//       {/* <SkillForm/> */}
//       {/* <CourseSkillMapping/> */}
//     </>
//   )
// }

// export default App


import { useState } from 'react'
import 'bootstrap/dist/css/bootstrap.min.css';
import {
  BrowserRouter as Router,
  Routes,
  Route,
  Link
} from 'react-router-dom';
import './App.css'
import Login from './components/Login';
import CourseForm from './components/CourseForm';
import SkillForm from './components/SkillForm';
import CourseSkillMapping from './components/CourseSkillMapping';
import Navigation from './components/Navigation';
import SubskillsForm from './components/SubskillsForm';
import DisplayCourses from './components/DisplayCourses';
import DisplaySkillMapping from './components/DisplaySkillMapping';
import DisplaySkills from './components/DisplaySkills';
import WorkInProgress from './components/WorkInProgress';
import DisplayCourseSubskillMapping from './components/DisplayCourseSubskillMapping';
import DisplayFaculty from './components/DisplayFaculty';
import FacultyForm from './components/FacultyForm';
import FacultyCourseMapping from './components/FacultyCourseMapping';
import Rating from './components/Rating';

function App() {
  const [count, setCount] = useState(0)

  return (
    <>
      <Router>
      <Navigation />

      {/* Define the route pages here */}
      <Routes>

        {/* Faculty Routes */}
        <Route path="/faculty/add" element={<FacultyForm/>} />
        <Route path="/faculty/view" element={<DisplayFaculty/>} />

        {/* Course Routes */}
        <Route path="/course/add" element={<CourseForm />} />
        <Route path="/course/view" element={<DisplayCourses/>} />

        {/* Skill Routes */}
        <Route path="/skill/add" element={<WorkInProgress/>} />
        <Route path="/skill/view" element={<DisplaySkills/>} />

        {/* Subskill Routes */}
        <Route path="/subskill/add" element={<WorkInProgress/>} />
        <Route path="/subskill/view" element={<DisplayCourseSubskillMapping/>} />

        {/* Skill Mapping Routes */}
        <Route path="/skill-mapping/add" element={<CourseSkillMapping />} />
        <Route path="/skill-mapping/view" element={<DisplaySkillMapping/>} />

        {/* Faculty Mapping Routes */}
        <Route path="/faculty-mapping/add" element={<FacultyCourseMapping/>} />
        <Route path="/faculty-mapping/view" element={<WorkInProgress/>} />

        {/* Rating Routes */}
        <Route path="/rating/add" element={<Rating/>} />
        <Route path="/rating/view" element={<WorkInProgress/>} />

        {/* Login Route */}
        <Route path="/login" element={<Login />} />
      </Routes>
    </Router>

    
      {/* <Login/> */}
      {/* <CourseForm/> */}
      {/* <SkillForm/> */}
      {/* <CourseSkillMapping/> */}
    </>
  )
}

export default App