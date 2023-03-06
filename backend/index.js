const con = require("./modal/connection")
const fs = require('fs');
const express = require("express")
const cors = require("cors");
const app = express();
app.use(express.json())
app.use(cors());
app.use('/uploads', express.static('uploads'))
const {routeMulter}= require("./route/route")
app.use("/api",routeMulter)
const {qrcoderouter}= require("../Backend/route/qrroutes");

app.use("/api",qrcoderouter)

/////api for json data for english.json////
app.get('/english-data', (req, res) => {
  const data = require('./english_language.json');
  res.json(data);
  console.log(data,"mydata")
});

/////api for json data for hindi.json////
app.get('/hindi-data', (req, res) => {
  const data = require('./hindi_language.json');
  res.json(data);
  console.log(data)
});

app.listen(3233,(err)=>{
    if(err){
        console.log("server not started ")
    }
    console.log("server  started ")
})




// Create the English language file
// const englishData = {
//   name: "Ashish Tiwari",
//   dob: "28/12/1992"
// };
// fs.writeFile('english_language.json', JSON.stringify(englishData), (err) => {
//   if (err) throw err;
//   //console.log('English language file has been created!');
// });

// // Create the Hindi language file
// const hindiData = {
//   name: "नाम",
//   dob: "28/12/1992"
// };
// fs.writeFile('hindi_language.json', JSON.stringify(hindiData), (err) => {
//   if (err) throw err;
//  // console.log('Hindi language file has been created!');
// });
fs.readFile('english_language.json', (err, data) => {
  if (err) throw err;
  const englishJson = JSON.parse(data);
  console.log(englishJson); // { name: 'User Name', dob: 'Date of birth' }
});

fs.readFile('hindi_language.json', (err, data) => {
  if (err) throw err;
  const hindiJson = JSON.parse(data);
  console.log(hindiJson); // { name: 'उपयोगकर्ता नाम', dob: 'जन्म की तारीख' }
});

