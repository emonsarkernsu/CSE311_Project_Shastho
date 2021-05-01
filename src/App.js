import React from 'react';
import logo from './logo.svg';
import './App.css';
import Header from './Header';
import CreateCard from './CreateCard';
import Note from './Note';
import Tcholesterol from './Tcholesterol';
import Tbloodsugar from './Tbloodsugar';
import Tbloodpressure from './Tbloodpressure';
import Tweight from './Tweight';
const App = () => {

  return (
    <>
      <Header />
      <Tcholesterol/>
      <Tbloodsugar/>
      <Tbloodpressure/>
      <Tweight/>

    </>
  );
};

export default App;
