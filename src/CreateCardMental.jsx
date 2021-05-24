import React, { useState, useEffect } from "react";
import Button from '@material-ui/core/Button';
import AddIcon from '@material-ui/icons/Add';
import Retrieve from './Retrieve';
import $ from 'jquery';


const CreateCardMental = (props) => {

  const [expand, setExpand] = useState(false);
  const [note, setNote] = useState({title:'',description:''});

  const InputEvent = (event) =>{
    const {name, value} = event.target;
    setNote((prevData) =>{
      return {
        ...prevData,
        [name]: value,
      };
    });
    console.log(note);
  };

  const addEvent = () => {
      setNote({
        title:'',
        description:'',
      });
  };

  const expandIt = () =>{
    setExpand(true);
  }
  const dontExpandIt = () =>{
    setExpand(false);
  }

  function sub() {
 $.post("http://localhost/insertvalStatusMental.php",note);
 window.location.reload();
  }

  return (
    <>
        <div className="main_note">
          <form action="insertvalStatusMental.php" method="post">
            <input type='text'
              className="mainNoteTextArea"
              name='title'
              value={note.title}
              onChange={InputEvent}
              placeholder ="Visit Title"
              autoComplete='off'
              onClick={expandIt}
              />

            {expand?
            <textarea
              className="mainNoteTextArea"
              rows=''
              column=''
              name='description'
              value={note.description}
              onChange={InputEvent}
              placeholder="Details regarding your doctor's visit...">
            </textarea> : null}

            <Button onClick={()=>{addEvent();dontExpandIt();sub();}}>
              <AddIcon className= 'plus_sign'/>
            </Button>

          </form>
        </div>
  </>
);
};

export default CreateCardMental;
