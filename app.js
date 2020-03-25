const express = require('express');
const mysql = require('mysql');
const parseString = require('xml2js').parseString;
const control = require('./controls/sorted_controls');


const app = express();

//Parsing incoming request body.
app.use(express.urlencoded({
  extended: true
}));

//path for the static files
app.use(express.static(__dirname+"/public"));

//set view engine template
app.set("view engine", "ejs");

//Create db connection pool
let pool = mysql.createPool({
    connectionLimit : 10, // default = 10
    host            : 'localhost',
    user            : 'root',
    password        : 'password',
    database        : 'assessment'
});


//setting root end point of the app
app.get("/",function(req,res){

  res.send("Home");
});

//in case of browser looking for favicon when we do get request.
app.get('/favicon.ico', (req, res) => res.status(204));



// by using colon, we can set our dynamic end points and
// after hitting  endpoints, parameter of call back function req.params contains
// its key, value.
app.get("/:custom", function(req,res){
  let paraName = "%\_"+req.params.custom+"%";  // letiable paraName cantains the value of quesry string.
  let sql = "SELECT xmldata FROM xmlhtmltable WHERE Name LIKE ?";
      pool.query(sql, paraName, function(err, result, fields){
        if(err){
          console.log(err);
        }
        else{
          let xml = result[0].xmldata;
          parseString(xml, {
            explicitArray: false,
            charkey: "innerXML",
            explicitCharkey: true,
            mergeAttrs: true
          }, function(err, result) {

            //path for controls.
            let property = result['Viklele.FormDesigner'].Object.Property
            //sorted groupBoxes
            let controls = control.sortControls(control.findControls(property));


            console.log(controls);
            
            // console.log(controls.outerControls[0].inner)


            res.render("form", controls);

           });

        }
      });


});

app.listen(process.env.PORT || 4000, function(){    //listening to dynamic port, local on 3000
    console.log("server is running on port 4000");
  });
