const express = require('express');
const mysql = require('mysql');
var parseString = require('xml2js').parseString;
// const xmlhtmltable = require('./xmlhtmltable');
const app = express();


app.use(express.static(__dirname+"/public"));
var pool = mysql.createPool({
    connectionLimit : 10, // default = 10
    host            : 'localhost',
    user            : 'root',
    password        : 'password',
    database        : 'assessment'
});


app.get("/assessment", function(req,res){
      pool.query("SELECT xmldata FROM xmlhtmltable", function(err, result, fields){
        if(err){
          console.log(err);
        }
        else{
          console.log(result);
          var xml = result[0].xmldata;
          parseString(xml, {
            explicitArray: false,
            charkey: "innerXML",
            explicitCharkey: true,
            mergeAttrs: true
          }, function(err, result) {

            //path for controls.
            var controls = result["Viklele.FormDesigner"].Object.Property
            // create each prmgroupbox by passing controls and index of Object.
            //console.log(Object.keys(controls).length);
            console.log(result);
              res.write("<h1>hello world</h1>");
           });

        }
      });

});

app.listen(process.env.PORT || 3000, function(){    //listening to dynamic port, local on 3000
    console.log("server is running on port 3000");
  });
