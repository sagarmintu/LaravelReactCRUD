import { useState } from "react";
import http from "../http";
import { useNavigate } from "react-router-dom";

const Create = () => {
  const navigate = useNavigate();
  
  const [inputs, setInputs] = useState({});

  const handleChange = (e) => {
    const name = e.target.name;
    const value = e.target.value;
    setInputs(values => ({...values,[name]:value}));
  }

  const submitForm = () => {
    http.post('/users', inputs).then((res) => {
      navigate('/');
    })
  }

  return (
    <>
      <h2>New User</h2>

      <div className="row">
        <div className="col-sm-6">
          <div className="card p-4">
            <label>Name</label>
            <input type="text" name="name" class="form-control" value={inputs.name || ''} onChange={handleChange} />

            <label>Email</label>
            <input type="email" name="email" class="form-control" value={inputs.email || ''} onChange={handleChange} />

            <label>Paswword</label>
            <input type="password" name="password" class="form-control" value={inputs.password || ''} onChange={handleChange} />

            <button type="button" onClick={submitForm} className="btn btn-info mt-2">Create</button>
          </div>
        </div>
      </div>
      
    </>
  )
}

export default Create;