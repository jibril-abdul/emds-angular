const express = require('express');
const dbAPI = require('./DBmodule/DBManager');
const xmlParser = require('./controls/XMLParser');
const control = require('./controls/sort');
const app = express();

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

app.get("/:custom", (req, res) => {
  let paraName = req.params.custom; // parsed quesry string.
  dbAPI.select(paraName, (xml) => {
    xmlParser.xmltojson(xml, (json) => {
      //path for controls.
      let property = json['Viklele.FormDesigner'].Object.Property;
      //sorted outercontrols
      let controls = control.sortControls(control.findControls(property));

      // console.log(controls);

      const options = {
        title: paraName,
        controls: controls
      }

      res.render("form", options);

      console.log(paraName + " has been rendered.");
    });
  });
});

app.listen(process.env.PORT || 4000, () => {
  console.log("server is running on port 4000");
});
