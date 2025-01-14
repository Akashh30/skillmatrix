import React, { useState } from 'react';



export default function Login() {
    const [employeeId, setEmployeeId] = useState('');
  const [password, setPassword] = useState('');

  const handleSubmit = async (e) => {
    e.preventDefault();
    try {
      const response = await fetch('http://localhost:3000/api/login', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({ employeeId, password }),
      });

      if (response.ok) {
        // The request was successful
        const data = await response.json();
        console.log('Success:', data);
        // Handle login success (e.g., redirect, store token)
      } else {
        // The server responded with a non-2xx status
        const errorData = await response;
        console.error('Login failed:', errorData);
        // Display error to user if needed
      }
    } catch (error) {
      // Network or other errors
      console.error('Error:', error);
    }
  };

  return (
    <>
     <div className="container d-flex justify-content-center align-items-center vh-100">
      <div className="card shadow-sm" style={{ width: '100%', maxWidth: '400px' }}>
        <div className="card-body">
          <h3 className="card-title text-center mb-4">Login</h3>
          <form onSubmit={handleSubmit}>
            <div className="mb-3">
              <label htmlFor="employeeId" className="form-label">
                Employee ID / Email ID
              </label>
              <input
                type="text"
                className="form-control"
                id="employeeId"
                placeholder="Enter your Employee/Email ID"
                value={employeeId}
                onChange={(e) => setEmployeeId(e.target.value)}
                required
              />
            </div>

            <div className="mb-3">
              <label htmlFor="password" className="form-label">
                Password
              </label>
              <input
                type="password"
                className="form-control"
                id="password"
                placeholder="Enter your password"
                value={password}
                onChange={(e) => setPassword(e.target.value)}
                required
              />
            </div>

            <button type="submit" className="btn btn-primary w-100">
              Submit
            </button>
          </form>
        </div>
      </div>
    </div>
    </>
  )
}
