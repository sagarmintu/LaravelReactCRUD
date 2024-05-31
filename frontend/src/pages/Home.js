import { useState, useEffect } from "react";
import http from "../http";
import { Link } from "react-router-dom";

const Home = () => {
  const [users, setUsers] = useState([]);

  useEffect(() => {
    fetchAllUser();
  }, []);

  const fetchAllUser = () => {
    http.get("/users").then((res) => {
      setUsers(res.data);
    });
  };

  const deleteUser = (id) => {
    http.delete("/users/"+id).then((res) => {
      fetchAllUser();
    });
  }

  return (
    <>
      <h2>User Listing</h2>
      <table className="table table-bordered">
        <thead>
          <tr>
            <th>Sl.No.</th>
            <th>Name</th>
            <th>Email</th>
            <th>Action</th>
          </tr>
        </thead>
        <tbody>
          {users.map((user, index) => (
            <tr key={user.id}>
              <td>{++index}</td>
              <td>{user.name}</td>
              <td>{user.email}</td>
              <td>
                <Link to={{ pathname:'/edit/'+user.id }} className="btn btn-success">Edit</Link>&nbsp;
                <Link to={{ pathname:'/view/'+user.id }} className="btn btn-primary">View</Link>&nbsp;
                <button type="button" className="btn btn-danger" onClick={() => {deleteUser(user.id)}}>Delete</button>
              </td>
            </tr>
          ))}
        </tbody>
      </table>
    </>
  );
};

export default Home;
