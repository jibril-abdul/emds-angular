var parseString = require('xml2js').parseString;
//To add package, use command 'npm install xml2js'
const fs = require('fs');

const xml = fs.readFileSync("BH_Progress_Assessment.xml",'utf8');
  //parseing xml to json object.
  parseString(xml,{explicitArray: false, attrkey:"attr",charkey:"textData"}, function(err,result){
    




      //total 19 Controls in this xml.
      //You can select each controls by changing index Object[i] located second element from the last.
      var controlAttribute =result["Viklele.FormDesigner"].Object.Property[16].Object[0].Property[3].Object[0].attr;
      var controlProperty = result["Viklele.FormDesigner"].Object.Property[16].Object[0].Property[3].Object[0].Property;

    console.log(controlAttribute);
    console.log(controlProperty);


    // const result = JSON.stringify(result); <--- make it to string to save it into json file.
    // fs.writeFileSynce("Assessment.json", result) <--- writing into json file.
  });
