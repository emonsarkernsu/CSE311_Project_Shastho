import React from 'react';
import logo from './Images/Logo white.png'
const Header = () => {
  return (
    <>
    <div className="header">
    <img src={logo} alt="logo" style={{height: 50}} />
    <h2> Your personal health database </h2>
    </div>
  </>
  );
};

export default Header;
