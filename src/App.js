import logo from './logo.svg';
import './App.css';
import React, {useState, useEffect} from 'react';
import LoginForum from './LoginForum';
import ExitToAppIcon from '@material-ui/icons/ExitToApp';
import Header from './Header';
import IntroCardVisits from './IntroCardVisits'
import IntroCardTracker from './IntroCardTracker'
import IntroCardStatus from './IntroCardStatus'
import CreateCard from './CreateCard';
import CreateCardAllergy from './CreateCardAllergy';
import CreateCardCardiac from './CreateCardCardiac';
import CreateCardDiabetes from './CreateCardDiabetes';
import CreateCardGenetic from './CreateCardGenetic';
import CreateCardMental from './CreateCardMental';
import CreateCardObesity from './CreateCardObesity';
import Note from './Note';
import { Route, Switch } from "react-router-dom";
import Navbar from "./Navbar";
import PageNotFound from "./PageNotFound";
import Footer from "./Footer";
import Status from "./Status";
import InputBloodSugar from "./InputBloodSugar";
import InputBloodPressure from "./InputBloodPressure";
import InputCholesterol from "./InputCholesterol";
import InputWeight from "./InputWeight";
import Tcholesterol from './Tcholesterol';
import Tbloodsugar from './Tbloodsugar';
import Tbloodpressure from './Tbloodpressure';
import Tweight from './Tweight';
import Retrieve from './Retrieve'

const App = () => {

//Login stuff
const adminUser = {
  email: "emon331@gmail.com",
  password: "admin123"
}
const [user, setUser]=useState({name:"", email:""});
const [error, setError]=useState("");

const Login = details => {
  console.log("details");

  if(details.email == adminUser.email && details.password == adminUser.password){
    console.log("Logged in");
    setUser({
      name: details.name,
      email: details.email,
    })
  } else {
    console.log("Details do not match");
    setError("Details do not match.")
  }
}

const Logout=(details)=> {
  console.log("Logout");
  setUser({
    name: "",
    email: "",
  })
  setError("");
  window.localStorage.removeItem("loginInfo");
}

useEffect(()=>{
  const loginData = window.localStorage.getItem("loginInfo");
  setUser(JSON.parse(loginData));
}, []);

useEffect(()=>{
  window.localStorage.setItem("loginInfo", JSON.stringify(user));
});

  return (
    <>
    {(user.email != "")?(
    <div>
    <Navbar Logout={Logout}/>
    <Switch>
    <Route exact path ="/visits">
        <IntroCardVisits/>
        <CreateCard/>
        <Retrieve/>
      </Route>
      <Route exact path="/tracker">
        <IntroCardTracker/>
        <div className="trackerContainer"><Tweight/><InputWeight/></div>
        <div className="trackerContainer"><Tcholesterol/><InputCholesterol/></div>
        <div className="trackerContainer"><Tbloodpressure/><InputBloodPressure/></div>
        <div className="trackerContainer"><Tbloodsugar/><InputBloodSugar/></div>
      <Status/>

      </Route>
      <Route exact path="/status">
      <IntroCardStatus/>
      <Status/>
      </Route>

      <Route exact path="/status/allergy">
      <CreateCardAllergy/>
      </Route>
      <Route exact path="/status/cardiac">
      <CreateCardCardiac/>
      </Route>
      <Route exact path="/status/diabetes">
      <CreateCardDiabetes/>
      </Route>
      <Route exact path="/status/genetic">
      <CreateCardGenetic/>
      </Route>
      <Route exact path="/status/mental">
      <CreateCardMental/>
      </Route>
      <Route exact path="/status/obesity">
      <CreateCardObesity/>
      </Route>

      <Route path="/">
      <PageNotFound/>
      </Route>

      </Switch>
      <Footer/>
      </div>
    ):(
      <LoginForum Login={Login} error={error}/>
    )}
    </>
  );
};

export default App;
