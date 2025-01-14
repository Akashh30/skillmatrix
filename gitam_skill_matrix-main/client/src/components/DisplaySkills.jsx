import React, { useState, useEffect } from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';

export default function DisplaySkills() {

    const [skills, setSkills] = useState([]);

  // Filter states
  const [skillNameFilter, setSkillNameFilter] = useState('');
  const [skillTypeFilter, setSkillTypeFilter] = useState('');
  const [searchTerm, setSearchTerm] = useState('');

  // Fetch data on component mount
  useEffect(() => {
    fetch('http://localhost:3000/api/skill')
      .then((res) => res.json())
      .then((data) => setSkills(data))
      .catch((error) => console.error('Error fetching skill data:', error));
  }, []);

  // Create unique options for each dropdown
  const skillNameOptions = [...new Set(skills.map((item) => item.skill_name))];
  const skillTypeOptions = [...new Set(skills.map((item) => item.type_name))];

  // Filter the data based on dropdowns and universal search
  const filteredSkills = skills.filter((item) => {
    // Skill Name
    if (skillNameFilter && item.skill_name !== skillNameFilter) {
      return false;
    }
    // Skill Type
    if (skillTypeFilter && item.type_name !== skillTypeFilter) {
      return false;
    }
    // Universal Search (case-insensitive check across all fields in the item)
    const combinedString = Object.values(item).join(' ').toLowerCase();
    if (!combinedString.includes(searchTerm.toLowerCase())) {
      return false;
    }

    return true;
  });

  return (
    <>
    <div className="container my-4">
      <h2 className="mb-4">Skill Details</h2>

      {/* Universal Search */}
      <div className="row mb-4">
        <div className="col-auto">
          <input
            type="text"
            id="searchTerm"
            className="form-control"
            style={{ width: '100%' }}
            placeholder="Search any field..."
            value={searchTerm}
            onChange={(e) => setSearchTerm(e.target.value)}
          />
        </div>
      </div>

      {/* Filter Controls */}
      <div className="row g-3 mb-3">
        {/* Skill Name Filter (substitute for "Course Name") */}
        <div className="col-auto" style={{ minWidth: '50%' }}>
          <label htmlFor="skillNameFilter" className="form-label">
            Skill Name
          </label>
          <select
            id="skillNameFilter"
            className="form-select"
            value={skillNameFilter}
            onChange={(e) => setSkillNameFilter(e.target.value)}
          >
            <option value="">All</option>
            {skillNameOptions.map((skillName) => (
              <option key={skillName} value={skillName}>
                {skillName}
              </option>
            ))}
          </select>
        </div>

        {/* Skill Type Filter */}
        <div className="col-auto" style={{ minWidth: '50%' }}>
          <label htmlFor="skillTypeFilter" className="form-label">
            Skill Type
          </label>
          <select
            id="skillTypeFilter"
            className="form-select"
            value={skillTypeFilter}
            onChange={(e) => setSkillTypeFilter(e.target.value)}
          >
            <option value="">All</option>
            {skillTypeOptions.map((typeName) => (
              <option key={typeName} value={typeName}>
                {typeName}
              </option>
            ))}
          </select>
        </div>
      </div>


      {/* Skills Table */}
      <div className="table-responsive">
        <table className="table table-bordered align-middle">
          <thead className="table-light">
            <tr>
              <th>Skill Name</th>
              <th>Skill Description</th>
              <th>Skill Type</th>
            </tr>
          </thead>
          <tbody>
            {filteredSkills.length > 0 ? (
              filteredSkills.map((item) => (
                <tr key={item.skill_id}>
                  <td>{item.skill_name}</td>
                  <td>{item.skill_description}</td>
                  <td>{item.type_name}</td>
                </tr>
              ))
            ) : (
              <tr>
                <td colSpan="3" className="text-center">
                  No skills found
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
