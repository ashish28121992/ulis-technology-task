const mysql = require("mysql");
const con= mysql.createConnection({
    host: "localhost",  
    user: "root", 
    database:"multerpratice", 
    password: ""  
})
con.connect((err)=>{
if(err){
    return console.log("database not connected")
}
      console.log("database  connected")
})

module.exports={con}