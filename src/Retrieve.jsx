import React, { useState, useEffect } from 'react'
import CreateCard from './CreateCard';
import Axios from 'axios';
import DeleteIcon from '@material-ui/icons/Delete';
import $ from 'jquery';

const Retrieve=() =>{
  const [data, setData] = useState([]);


    // function insertValues(){
    //   for(var i=0; i<info.length;i++ ){
    //     // setData({
    //     //   title: info[i],
    //     //   docname: info[i+1],
    //     //   content: info[i+2],
    //     // })
    //     console.log(data);
    //   }
    //   // setData({
    //   //   title: info,
    //   //   docname: info2,
    //   //   content: info3,
    //   // })
    //   console.log(info);
    //    //CreateCard.retrieveValues(data);
    // }
    //       let info=[];
    useEffect(() => {
         debugger;
         Axios
             .get("http://localhost/retrieveval.php")
             .then(result => setData(result.data));
         console.log(data);
         debugger;
     }, []);

     function sub(item) {
       $.post("http://localhost/deleteval.php",item);
       console.log(data);
       window.location.reload();
     }

     return (
         <div>
             <div className="row" style={{ 'margin': "10px" }}>
                 <div className="col-sm-12 btn btn-info">

                  </div>
             </div>
             <div className="storedValues">
             <h1>Stored Values </h1> <h3></h3> <h4>.of your visits</h4>
             </div>
             <table class="table" >
                 <thead class="tableHeader">
                     <tr>
                         <th scope="col" class="thx"></th>
                         <th scope="col" class="th1">Title</th>
                         <th scope="col" class="th2">Doctor's name</th>
                         <th scope="col" class="th3">Issue</th>

                     </tr>
                 </thead>

                 <tbody className="tableBody" >
                     {data.map((item, index) => {
                         return <tr className="tableCard" key={index} bgcolor="white">
                             <td >
                               <form action="deleteval.php" method="post">
                                 <a  className ="trashBtn"  onClick={()=>{sub(item)}}>
                                  <DeleteIcon fontSize="small" className='trash_sign'/>
                                 </a>
                               </form>
                             </td>
                             <td className="td">{item.Title}</td>
                             <td className="td">{item.DocName}</td>
                             <td className="td">{item.Issue}</td>

                         </tr>
                     })}
                 </tbody>
             </table>

         </div>
     )
 }

export default Retrieve
