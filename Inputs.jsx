import React from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import axios from 'axios';
import {Alert} from 'react-alert'
class Inputs extends React.Component {
  constructor(props)
    {
      super(props);
      this.addFormData = this.addFormData.bind(this);
    }
  //Form Submission
  addFormData(evt)
    {
      alert("Value added Succesfully")
      evt.preventDefault();
      const fd = new FormData();
      fd.append('myDate1', this.refs.myDate1.value);
      fd.append('myValue1', this.refs.myValue1.value);

      axios.post('http://localhost/insertbloodsugar.php', fd
      ).then(res=>
      {
      //Success alert

    this.myFormRef.reset();
    }
    );
    }


  render() {

    return (
      <>

      <div className="maincontainer">

              <h1 className="mr-5 ml-5 mt-5">Blood Sugar Tracker</h1>
              <div className="container mb-5 mt-5 text-left">

              <form ref={(el) => this.myFormRef = el}>
              <div className="form-group">
              <input type="date" className="form-control" id="date1" aria-describedby="Help" placeholder="Enter Date" ref="myDate1" />

              </div>
              <div className="form-group">
              <input type="number" className="form-control" id="Value1" placeholder="Enter Value" ref="myValue1" />
              </div>
              <button type="submit" className="btn btn-primary" onClick={this.addFormData}>Submit</button>
            </form>


            </div>

            </div>
      </>



)
};
}
  export default Inputs
