import React, { useState, useEffect } from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';

export default function DisplayFaculty() {

    const [employees, setEmployees] = useState([]);

  // Filter states
  const [designationFilter, setDesignationFilter] = useState('');
  const [departmentFilter, setDepartmentFilter] = useState('');
  const [schoolFilter, setSchoolFilter] = useState('');
  const [searchTerm, setSearchTerm] = useState('');

  // Fetch data on component mount
  useEffect(() => {
    fetch('http://localhost:3000/api/employee')
      .then((res) => res.json())
      .then((data) => setEmployees(data))
      .catch((error) => console.error('Error fetching employee data:', error));
  }, []);

  // Generate unique options for each dropdown
  const designationOptions = [
    ...new Set(employees.map((emp) => emp.designation)),
  ];
  const departmentOptions = [
    ...new Set(employees.map((emp) => emp.department_name)),
  ];
  const schoolOptions = [
    ...new Set(employees.map((emp) => emp.school_name)),
  ];

  // Filter the data based on dropdowns and universal search
  const filteredEmployees = employees.filter((emp) => {
    // Designation
    if (designationFilter && emp.designation !== designationFilter) {
      return false;
    }
    // Department
    if (departmentFilter && emp.department_name !== departmentFilter) {
      return false;
    }
    // School
    if (schoolFilter && emp.school_name !== schoolFilter) {
      return false;
    }

    // Universal Search (case-insensitive check across all fields of the object)
    const combinedString = Object.values(emp).join(' ').toLowerCase();
    if (!combinedString.includes(searchTerm.toLowerCase())) {
      return false;
    }

    return true;
  });

  return (
    <>
    <div className="container my-4">
      <h2 className="mb-4">Faculty Details</h2>

      {/* Universal Search */}
      <div className="row mb-4">
        <div className="col-sm-6 col-md-4">
          <input
            type="text"
            id="searchTerm"
            className="form-control"
            placeholder="Search any field..."
            value={searchTerm}
            onChange={(e) => setSearchTerm(e.target.value)}
          />
        </div>
      </div>

      {/* Filter Controls */}
      <div className="row g-3 mb-3">
        {/* Designation Filter */}
        <div className="col-sm-6 col-md-3">
          <label htmlFor="designationFilter" className="form-label">
            Designation
          </label>
          <select
            id="designationFilter"
            className="form-select"
            value={designationFilter}
            onChange={(e) => setDesignationFilter(e.target.value)}
          >
            <option value="">All</option>
            {designationOptions.map((desg) => (
              <option key={desg} value={desg}>
                {desg}
              </option>
            ))}
          </select>
        </div>

        {/* Department Filter */}
        <div className="col-sm-6 col-md-3">
          <label htmlFor="departmentFilter" className="form-label">
            Department
          </label>
          <select
            id="departmentFilter"
            className="form-select"
            value={departmentFilter}
            onChange={(e) => setDepartmentFilter(e.target.value)}
          >
            <option value="">All</option>
            {departmentOptions.map((dept) => (
              <option key={dept} value={dept}>
                {dept}
              </option>
            ))}
          </select>
        </div>

        {/* School Filter */}
        <div className="col-sm-6 col-md-3">
          <label htmlFor="schoolFilter" className="form-label">
            School
          </label>
          <select
            id="schoolFilter"
            className="form-select"
            value={schoolFilter}
            onChange={(e) => setSchoolFilter(e.target.value)}
          >
            <option value="">All</option>
            {schoolOptions.map((school) => (
              <option key={school} value={school}>
                {school}
              </option>
            ))}
          </select>
        </div>
      </div>


      {/* Employees Table */}
      <div className="table-responsive">
        <table className="table table-bordered align-middle">
          <thead className="table-primary">
            <tr>
              <th>Employee ID</th>
              <th>Email</th>
              <th>Faculty Name</th>
              <th>Designation</th>
              <th>Experience</th>
              <th>Department</th>
              <th>School</th>
            </tr>
          </thead>
          <tbody>
            {filteredEmployees.length > 0 ? (
              filteredEmployees.map((emp) => (
                <tr key={emp.employee_id}>
                  <td>{emp.employee_id}</td>
                  <td>{emp.employee_mail}</td>
                  <td>{emp.employee_name}</td>
                  <td>{emp.designation}</td>
                  <td>{emp.experience}</td>
                  <td>{emp.department_name}</td>
                  <td>{emp.school_name}</td>
                </tr>
              ))
            ) : (
              <tr>
                <td colSpan="7" className="text-center">
                  No employees found
                </td>
              </tr>
            )}
          </tbody>
        </table>
      </div>
    </div>
    </>
  )
}