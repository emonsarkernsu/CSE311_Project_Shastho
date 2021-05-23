import React from 'react';
import {NavLink} from 'react-router-dom';
import logo from './Images/Asset 1.svg';

const Navbar = () =>{
    return (
      <>
      <div className="navlinks">
      <img className="logostyle" src={logo} alt="logo" style={{height: 35}} />
      
      <NavLink exact activeClassName="active_class" to='/visits'> Visits </NavLink>
      <NavLink exact activeClassName="active_class" to='/tracker'> Tracker </NavLink>
      <NavLink exact activeClassName="active_class" to='/status'> Status </NavLink>

      </div>
      </>
    );
};

export default Navbar
