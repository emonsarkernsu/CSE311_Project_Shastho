import React from 'react';
import logo from './logo.svg';
import './App.css';
import Header from './Header';
import {Alert} from 'react-alert'
import './App.css';
import Tcholesterol from './Tcholesterol';
import Tbloodsugar from './Tbloodsugar';
import Tbloodpressure from './Tbloodpressure';
import Tweight from './Tweight';
import Inputs from './Inputs'
import 'bootstrap/dist/css/bootstrap.min.css';
import axios from 'axios';
const App = () => {

  return (
    <>
      <Header />
      <Inputs/>
      <Tcholesterol/>
      <Tbloodsugar/>
      <Tbloodpressure/>
      <Tweight/>

    </>
  );
};

export default App;
