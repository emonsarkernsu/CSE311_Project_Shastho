import logo from './logo.svg';
import './App.css';
import React, {useState,useEffect} from 'react';
import LoginForum from './LoginForum'
import Header from './Header';
import IntroCardVisits from './IntroCardVisits'
import IntroCardTracker from './IntroCardTracker'
import IntroCardStatus from './IntroCardStatus'
import CreateCard from './CreateCard';
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

  const [addItem, setAddItem] = useState([]);
  const x=Retrieve();
  const addNote = (note) => {
      setAddItem((prevData)=>{
        return [...prevData, note];
      });};
  const onDelete = (id) =>{
    setAddItem((olddata)=>
    olddata.filter((currentdata, indx) =>{
      return indx !== id;
    }))};

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
    console.log(x);

    console.log(addItem);
  } else {
    console.log("Details do not match");
  }
}

const Logut = details => {
  console.log("Logout");
  setUser({
    name: "",
    email: ""
  })
}

  return (
    <>
    {(user.email != "")?(
    <div>
    <Navbar/>
    <Switch>
    <Route exact path ="/visits">
        <IntroCardVisits/>
        <CreateCard
          passNote={addNote}
        />
        <div className="mapArea">
        {addItem.map((val, index)=>{
          return <Note
              key={index}
              id={index}
              title={val.title}
              content={val.content}
              docname={val.docname}
              deleteItem = {onDelete}
              />
        })}
        </div>
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
