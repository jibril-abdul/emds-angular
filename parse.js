var parseString = require('xml2js').parseString;

const fs = require('fs');
const prmGroupBox = require('./prmgroupbox');
const prmLabel = require('./prmlabel');

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
  // create each prmgroupbox by passing controls and index of Object.
  var groupBox1 = new prmGroupBox(controls, 3);

  console.log(groupBox1.getPrmBoxStats());
 });


  // const resultToString = JSON.stringify(result); //make it to string to save it into json file.
  // fs.writeFileSync("Assessment.json", resultToString) // writing into json file.
