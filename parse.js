var parseString = require('xml2js').parseString;

const fs = require('fs');
const prmbox = require('./prmbox');
const xml = fs.readFileSync("BH_Progress_Assessment.xml", 'utf8');
//parseing xml to json object.
parseString(xml, {
  explicitArray: false,
  charkey: "innerXML",
  explicitCharkey: true,
  mergeAttrs: true
}, function(err, result) {

  //path for controls.
  var controls = result["Viklele.FormDesigner"].Object.Property[16].Object;

  var prmBoxGroup = [];
  // create each prmgroupbox by passing controls and index of Object.
  prmBoxGroup.push(prmbox1 = new prmbox(controls, 0));
  prmBoxGroup.push(prmbox1 = new prmbox(controls, 1));
  prmBoxGroup.push(prmbox1 = new prmbox(controls, 2));
  prmBoxGroup.push(prmbox1 = new prmbox(controls, 3));
  prmBoxGroup.push(prmbox1 = new prmbox(controls, 4));
  prmBoxGroup.push(prmbox1 = new prmbox(controls, 5));

 prmBoxGroup.forEach(function(box){
   console.log(box.getLocation());

 });


  // const resultToString = JSON.stringify(result); //make it to string to save it into json file.
  // fs.writeFileSync("Assessment.json", resultToString) // writing into json file.
});
