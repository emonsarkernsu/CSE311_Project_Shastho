import React, { useState } from "react";
import Button from '@material-ui/core/Button';
import AddIcon from '@material-ui/icons/Add';

const CreateNote = (props) => {

  const [expand, setExpand] = useState(false);

  const [note, setNote] = useState({title:'',content:''});

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
      props.passNote(note);
      setNote({
        title:'',
        content:'',
        docname:'',
      });
  };

  const expandIt = () =>{
    setExpand(true);
  }
  const dontExpandIt = () =>{
    setExpand(false);
  }
  return (
    <>
        <div className="main_note">
          <form>
            <input type='text'
              name='title'
              value={note.title}
              onChange={InputEvent}
              placeholder ="Visit Title"
              autoComplete='off'
              onClick={expandIt}
              />

            {expand?
            <textarea
              rows=''
              column=''
              name='docname'
              value={note.docname}
              onChange={InputEvent}
              placeholder="Doctor's Name...">
            </textarea> : null}

            {expand?
            <textarea
              rows=''
              column=''
              name='content'
              value={note.content}
              onChange={InputEvent}
              placeholder="Details regarding your doctor's visit...">
            </textarea> : null}

            <Button onClick={addEvent}>
              <AddIcon className= 'plus_sign'
              onClick={dontExpandIt}/>
            </Button>

          </form>
        </div>
  </>
);
};

export default CreateNote;
