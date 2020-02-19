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
  var controls = result["Viklele.FormDesigner"].Object.Property[16].Object;

  var prmBox1 = new prmbox(controls, 1);
  var prmBox2 = new prmbox(controls, 2);
  console.log(prmBox1.getName());

  // const resultToString = JSON.stringify(result); //make it to string to save it into json file.
  // fs.writeFileSync("Assessment.json", resultToString) // writing into json file.
});
