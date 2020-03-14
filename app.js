const express = require('express');
const mysql = require('mysql');
var parseString = require('xml2js').parseString;
var jsonnavi = require('./controls/controls');


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
var pool = mysql.createPool({
    connectionLimit : 10, // default = 10
    host            : 'localhost',
    user            : 'root',
    password        : 'password',
    database        : 'assessment'
});


//setting root end point of the app
app.get("/",function(req,res){

  res.render("assessment");
});

//in case of browser looking for favicon when we do get request.
app.get('/favicon.ico', (req, res) => res.status(204));



// by using colon, we can set our dynamic end points and
// after hitting  endpoints, parameter of call back function req.params contains
// its key, value.
app.get("/:custom", function(req,res){
  var paraName = "%\_"+req.params.custom+"%";  // Variable paraName cantains the value of quesry string.
  var sql = "SELECT xmldata FROM xmlhtmltable WHERE Name LIKE ?";
      pool.query(sql, paraName, function(err, result, fields){
        if(err){
          console.log(err);
        }
        else{
          var xml = result[0].xmldata;
          parseString(xml, {
            explicitArray: false,
            charkey: "innerXML",
            explicitCharkey: true,
            mergeAttrs: true
          }, function(err, result) {

            //path for controls.
            console.log(result);
            var property = result['Viklele.FormDesigner'].Object.Property
            var controls = jsonnavi.createControls(jsonnavi.findControls(property));
            console.log(controls.groupBox[0]);



            // console.log(controls.radioButton[0].xCoordinate);
            // console.log(controls.radioButton[0].yCoordinate);
            // create each prmgroupbox by passing controls and index of Object.
            //console.log(Object.keys(controls).length);

            res.send("<h1>hello world</h1>");

           });

        }
      });


});

app.listen(process.env.PORT || 4000, function(){    //listening to dynamic port, local on 3000
    console.log("server is running on port 3000");
  });
