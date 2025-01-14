import React from 'react';
import {
  BrowserRouter as Router,
  Routes,
  Route,
  Link
} from 'react-router-dom';
import { Navbar, Nav, NavDropdown, Container } from 'react-bootstrap';
import 'bootstrap/dist/css/bootstrap.min.css';

function FacultyAdd() {
    return <h2 className="p-3">Faculty - Add</h2>;
  }
  function FacultyView() {
    return <h2 className="p-3">Faculty - View</h2>;
  }
  
  function CourseAdd() {
    return <h2 className="p-3">Course - Add</h2>;
  }
  function CourseView() {
    return <h2 className="p-3">Course - View</h2>;
  }
  
  function SkillAdd() {
    return <h2 className="p-3">Skill - Add</h2>;
  }
  function SkillView() {
    return <h2 className="p-3">Skill - View</h2>;
  }
  
  function SubskillAdd() {
    return <h2 className="p-3">Subskill - Add</h2>;
  }
  function SubskillView() {
    return <h2 className="p-3">Subskill - View</h2>;
  }
  
  function SkillMappingAdd() {
    return <h2 className="p-3">Skill Mapping - Add</h2>;
  }
  function SkillMappingView() {
    return <h2 className="p-3">Skill Mapping - View</h2>;
  }
  
  function FacultyMappingAdd() {
    return <h2 className="p-3">Faculty Mapping - Add</h2>;
  }
  function FacultyMappingView() {
    return <h2 className="p-3">Faculty Mapping - View</h2>;
  }
  
  function RatingAdd() {
    return <h2 className="p-3">Rating - Add</h2>;
  }
  function RatingView() {
    return <h2 className="p-3">Rating - View</h2>;
  }
  
  function Login() {
    return <h2 className="p-3">Login Page</h2>;
  }

export default function Navigation() {
  return (
    <>
    <Navbar bg="light" expand="md" fixed="top">
    <Container fluid>
        <Navbar.Brand as={Link} to="/">
          Skill Matrix
        </Navbar.Brand>
        <Navbar.Toggle aria-controls="basic-navbar-nav" />
        
        <Navbar.Collapse id="basic-navbar-nav">
          {/* Left side nav items */}
          <Nav className="me-auto">
            {/* Faculty dropdown */}
            <NavDropdown title="Faculty" id="faculty-dropdown">
              <NavDropdown.Item as={Link} to="/faculty/add">
                Add
              </NavDropdown.Item>
              <NavDropdown.Item as={Link} to="/faculty/view">
                View
              </NavDropdown.Item>
            </NavDropdown>

            {/* Course dropdown */}
            <NavDropdown title="Course" id="course-dropdown">
              <NavDropdown.Item as={Link} to="/course/add">
                Add
              </NavDropdown.Item>
              <NavDropdown.Item as={Link} to="/course/view">
                View
              </NavDropdown.Item>
            </NavDropdown>

            {/* Skill dropdown */}
            <NavDropdown title="Skill" id="skill-dropdown">
              <NavDropdown.Item as={Link} to="/skill/add">
                Add
              </NavDropdown.Item>
              <NavDropdown.Item as={Link} to="/skill/view">
                View
              </NavDropdown.Item>
            </NavDropdown>

            {/* Subskill dropdown */}
            <NavDropdown title="Subskill" id="subskill-dropdown">
              <NavDropdown.Item as={Link} to="/subskill/add">
                Add
              </NavDropdown.Item>
              <NavDropdown.Item as={Link} to="/subskill/view">
                View
              </NavDropdown.Item>
            </NavDropdown>

            {/* Skill Mapping dropdown */}
            <NavDropdown title="Skill Mapping" id="skill-mapping-dropdown">
              <NavDropdown.Item as={Link} to="/skill-mapping/add">
                Add
              </NavDropdown.Item>
              <NavDropdown.Item as={Link} to="/skill-mapping/view">
                View
              </NavDropdown.Item>
            </NavDropdown>

            {/* Faculty Mapping dropdown */}
            <NavDropdown title="Faculty Mapping" id="faculty-mapping-dropdown">
              <NavDropdown.Item as={Link} to="/faculty-mapping/add">
                Add
              </NavDropdown.Item>
              <NavDropdown.Item as={Link} to="/faculty-mapping/view">
                View
              </NavDropdown.Item>
            </NavDropdown>

            {/* Rating dropdown */}
            <NavDropdown title="Rating" id="rating-dropdown">
              <NavDropdown.Item as={Link} to="/rating/add">
                Add
              </NavDropdown.Item>
              <NavDropdown.Item as={Link} to="/rating/view">
                View
              </NavDropdown.Item>
            </NavDropdown>
          </Nav>

          {/* Right side nav items (Login) */}
          <Nav>
            <Nav.Link as={Link} to="/login">Login</Nav.Link>
          </Nav>
        </Navbar.Collapse>
      </Container>
    </Navbar>
    </>
  )
}
