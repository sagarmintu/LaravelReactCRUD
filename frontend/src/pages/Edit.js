import { useEffect, useState } from "react";
import http from "../http";
import { useNavigate, useParams } from "react-router-dom";

const Edit = (props) => {
  const navigate = useNavigate();
  
  const [inputs, setInputs] = useState({});
  const {id} = useParams();

  useEffect(() => {
    fetchUser();
  },[]);

  const fetchUser = () => {
    http.get('/users/'+id+'/edit').then((res) => {
        setInputs({
            name: res.data.name,
            email: res.data.email,
        });
    });
  }

  const handleChange = (e) => {
    const name = e.target.name;
    const value = e.target.value;
    setInputs(values => ({...values,[name]:value}));
  }

  const submitForm = () => {
    http.put('/users/'+id, inputs).then((res) => {
      navigate('/');
    })
  }

  return (
    <>
      <h2>Edit User</h2>

      <div className="row">
        <div className="col-sm-6">
          <div className="card p-4">
            <label>Name</label>
            <input type="text" name="name" class="form-control" value={inputs.name || ''} onChange={handleChange} />

            <label>Email</label>
            <input type="email" name="email" class="form-control" value={inputs.email || ''} onChange={handleChange} />

            <button type="button" onClick={submitForm} className="btn btn-success mt-2">Update</button>
          </div>
        </div>
      </div>
      
    </>
  )
}

export default Edit;