const express = require('express');
const dbAPI = require('./DBmodule/DBManager');
const xmlParser = require('./controls/XMLParser');
const control = require('./controls/sort');
const app = express();
const fs = require('fs'); 

//Parsing incoming request body.
app.use(express.urlencoded({
  extended: true
}));
//path for the static files
app.use(express.static(__dirname + "/public"));
//set view engine template
app.set("view engine", "ejs");
//setting root end point of the app
app.get("/", (req, res) => {
  res.send("Home");
});
//in case of browser looking for favicon when we do get request.
app.get('/favicon.ico', (req, res) => res.status(204));

// For test without working MySQL Database
app.get("/test", (req, res) => {
  fs.readFile('BH_Progress_Assessment.xml', 'utf8', function(err, xml) {
    xmlParser.xmltojson(xml, (json) => {
      //path for controls.
      let property = json['Viklele.FormDesigner'].Object.Property;
      //sorted outercontrols
      let controls = control.sortControls(control.findControls(property));

      // console.log(controls);

      const options = {
        title: "TEST: BH_Progess_Assement",
        controls: controls
      }

      res.render("form", options);

      console.log("TEST: BH_Progess_Assement has been rendered.");
    });
  });
});

app.get("/xmlhtmltable", function (req, res, next) {
  var tableName = req.query.name;
  dbAPI.select(tableName, (xml) => {
    xmlParser.xmltojson(xml, (json) => {
      //path for controls.
      let property = json['Viklele.FormDesigner'].Object.Property;
      //sorted outercontrols
      let controls = control.sortControls(control.findControls(property));

      const options = {
        title: tableName,
        controls: controls
      }

      res.render("form", options);

      console.log(tableName + " has been rendered.");
    });
  });
});

app.listen(process.env.PORT || 4000, () => {
  console.log("server is running on port 4000");
});

//http://localhost:4000/xmlhtmltable?name=BH_Progress_Assessment