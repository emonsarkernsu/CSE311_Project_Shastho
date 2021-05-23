import React, { useState, useEffect } from 'react'
import Axios from 'axios';
const Retrieve=() =>{
    const [data, setData] = useState([]);

          let info=[];
          Axios
              .get("http://localhost/retrieveval.php")
              .then(result => {
          console.log(result);
          for (const dataObj of result.data) {
            info.push((dataObj.Title));
            info.push((dataObj.DocName));
            info.push((dataObj.Issue));
          }

        })
      return info
          return(<></>);
    };


export default Retrieve
