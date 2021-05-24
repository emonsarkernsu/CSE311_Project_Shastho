import React, {useState} from 'react';
import logo from './Images/Asset 1.svg';
import background from './Images/Login BG.svg';

function LoginForum({Login, error}){
  const [details, setDetails] = useState({name:"", email:"", password:""});

  const submitHandler = e => {
    e.preventDefault();
    Login(details);
  }

  return(
    <div className="lg">
    <div className="forum_wrapper">
      <form onSubmit={submitHandler}>
        <div className="form-inner">
          <img className="login_logostyle" src={logo} alt="logo" style={{height: 35}} />

          <div className="form-group">
            <input id="label" type="text" placeHolder="Name" name="name" id="name" onChange={e => setDetails({...details, name: e.target.value})} value={details.name}/>
          </div>
          <div className="form-group">
            <input id="label" type="email" placeHolder="Email" name="email" id="email" onChange={e => setDetails({...details, email: e.target.value})} value={details.email}/>
          </div>
          <div className="form-group">
            <input id="label" type="password" placeHolder="Password" name="password" id="password" onChange={e => setDetails({...details, password: e.target.value})} value={details.password}/>
          </div>
          {(error != "") ? (<div className="error">{error}</div>) : ""}
          <div className="center_btn">
            <button className="login_btn" type="submit" value="LOGIN" onClick={submitHandler}> LOGIN </button>
          </div>
        </div>
      </form>
      </div>
      </div>
  )
}

export default LoginForum;
