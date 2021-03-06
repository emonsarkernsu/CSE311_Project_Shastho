const express = require('express')
const bodyParser = require('body-parser')
const mysql = require('mysql')

const app = express()
const port = process.env.PORT || 5000;
app.use(bodyParser.urlencoded({extended:false}));
app.use(bodyParser.json())
app.listen(port, () => console.log(`Listening on port ${port}`))

const pool= mysql.createPool({
  connectionLimit: 10,
  host:'localhost',
  user: 'root',
  password: '',
  database: 'org'
});
app.get('',(req,res)=>{
  pool.getConnection((err,connection)=>{
    if (err) throw err
    connection.query('SELECT * from bloodsugar',(err,rows)=>{
      connection.release()
      if(!err)
      {
        res.send(rows)
        console.log(res)
      }
      else {
        console.log(err)
      }

    })

  })
})
