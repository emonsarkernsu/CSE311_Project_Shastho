import logo from './logo.svg';
import './App.css';
import React, {useState} from 'react';
import Header from './Header';
import IntroCardVisits from './IntroCardVisits'
import IntroCardTracker from './IntroCardTracker'
import IntroCardStatus from './IntroCardStatus'
import CreateCard from './CreateCard';
import Note from './Note';
import { Route, Switch } from "react-router-dom";
import Navbar from "./Navbar";
import Footer from "./Footer";
import Status from "./Status";
import Tcholesterol from './Tcholesterol';
import Tbloodsugar from './Tbloodsugar';
import Tbloodpressure from './Tbloodpressure';
import Tweight from './Tweight';

const App = () => {

    const [addItem, setAddItem] =useState([]);

  const addNote = (note) => {
      setAddItem((prevData)=>{
        return [...prevData, note];
      });
  };

  const onDelete = (id) =>{
    setAddItem((olddata)=>
    olddata.filter((currentdata, indx) =>{
      return indx !== id;
    })
  )};

  return (
    <>
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
        <Tweight/>
        <Tbloodsugar/>
        <Tcholesterol/>
        <Tbloodpressure/>
      <Status/>

      </Route>
      <Route exact path="/status">
      <IntroCardStatus/>
      <Status/>

      </Route>
      </Switch>
      <Footer/>
    </>
  );
};

export default App;
