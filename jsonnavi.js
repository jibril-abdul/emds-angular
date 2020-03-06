const prmGroupBox = require('./controls/prmgroupbox');
const prmLabel = require('./controls/prmlabel');
const prmTextBox = require('./controls/prmtextbox');
const prmRadioButton = require('./controls/prmradiobutton');
const prmCheckBox = require('./controls/prmcheckbox');

const fs = require('fs');
// const prompt = require('prompt')
//var jsonRequest = prompt("Enter a json file: ");

var json = JSON.parse(fs.readFileSync('./BH_Progress_Assessment.json'));
var property = json['Viklele.FormDesigner'].Object.Property


const grpBoxes = [];
const labels = [];
const checkBoxes = [];
const radioButtons = [];

function findControls(property){
    for(var i in property){
        if(property[i].name == 'Controls'){
            return property[i].Object;
        }
    }
}

function createControls(){
  var controls = findControls(property);
  for (var controlNumber = 1; controlNumber < Object.keys(controls).length; controlNumber++) {
    for(var i in controls){
    switch (controls[i].name) {
      case "PrmGroupBox"+controlNumber:
        var grpbox = new prmGroupBox(controls[i])
        grpBoxes.push(grpbox);
        break;
      case "PrmLabel"+controlNumber:
        var label = new prmLabel(controls[i]);
        labels.push(label);
        break;
      case "prmTextBox"+controlNumber:
        var textbox = new prmTextBox(controls[i]);
        textBoxes.push(textbox);
        break;
      case "prmRadioButton"+controlNumber:
        var radioButton = new prmRadioButton(controls[i]);
        radioButtons.push(radioButton);
        break;
      case "prmCheckBox"+controlNumber:
        var checkBox = new prmCheckBox(controls[i]);
        checkBoxes.push(checkBox);
        break;
      default:
        break;
      }
    }
  }
}
//     for(var i in controls){
//         if(controls[i].name == "PrmGroupBox"+controlNumber){
//             var grpbox = new prmGroupBox(controls[i])
//             grpBoxes.push(grpbox);
//         }
//         else if(controls[i].name == "PrmLabel"+controlNumber){
//             var label = new prmLabel(controls[i]);
//             labels.push(label);
//         }
//         else if(controls[i].name == "prmTextBox"+controlNumber){
//             var textbox = new prmTextBox(controls[i]);
//             textBoxes.push(textbox);
//         }
//         else if(controls[i].name == "prmRadioButton"+controlNumber){
//             var radioButton = new prmRadioButton(controls[i]);
//             radioButtons.push(radioButton);
//         }
//         else if(controls[i].name == "prmCheckBox"+controlNumber){
//             var checkBox = new prmCheckBox(controls[i]);
//             checkBoxes.push(checkBox);
//         }
//
//     }
//   }
// }

createControls();
// console.log(json);
// labels.forEach(function(element){
//   console.log(element.textAlign);
// });

console.log(grpBoxes[0].controls);
// console.log([1]);
