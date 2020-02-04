var parseString = require('xml2js').parseString;

const fs = require('fs');

const xml = fs.readFileSync("BH_Progress_Assessment.xml",'utf8');
  //parseing xml to json object.
  parseString(xml,{explicitArray: false, charkey:"innerXML", explicitCharkey:true, mergeAttrs:true}, function(err,result){
      

      // var test = result["Viklele.FormDesigner"].Object;





      //controls
      var controlList = result["Viklele.FormDesigner"].Object.Property[16];

      //You can choose each controls by changing index Object[i] located second element from the last.
      var controlUseWaitCursor = result["Viklele.FormDesigner"].Object.Property[16].Object[0].Property[3].Object[0].Property[5];

      var controlTabIndex = result["Viklele.FormDesigner"].Object.Property[16].Object[0].Property[3].Object[0].Property[4];

      var controlName = result["Viklele.FormDesigner"].Object.Property[16].Object[0].Property[3].Object[0].Property[0];

      var controlLocation = result["Viklele.FormDesigner"].Object.Property[16].Object[0].Property[3].Object[0].Property[2];

      var controlSize = result["Viklele.FormDesigner"].Object.Property[16].Object[0].Property[3].Object[0].Property[3];


      //printing controls
    console.log(controlList);

    // const resultToString = JSON.stringify(result);  //make it to string to save it into json file.
    // fs.writeFileSync("Assessment.json", resultToString) // writing into json file.
  });
