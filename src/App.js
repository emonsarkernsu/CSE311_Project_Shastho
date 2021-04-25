import logo from './logo.svg';
import './App.css';
import React, {useState} from 'react';
import Header from './Header';
import CreateCard from './CreateCard';
import Note from './Note';

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
      <Header />
      <CreateCard
        passNote={addNote}
      />
      {addItem.map((val, index)=>{
        return <Note
            key={index}
            id={index}
            title={val.title}
            content={val.content}
            docname={val.docname}
            deleteItem = {onDelete}
            />
      }
    )}
    </>
  );
};

export default App;
