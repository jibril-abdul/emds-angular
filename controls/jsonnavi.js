
const prmGroupBox = require('./prmgroupbox');
const prmLabel = require('./prmlabel');
const prmTextBox = require('./prmtextbox');
const prmRadioButton = require('./prmradiobutton');
const prmCheckBox = require('./prmcheckbox');



// const control = exports = module.exports = {}; // Put function inside of exports object.

function find(property){
    for(var i in property){
        if(property[i].name == 'Controls'){
            return property[i].Object;
        }
    }
}
const grpBoxes = [];
const labels = [];
const checkBoxes = [];
const radioButtons = [];
const textBoxes = [];
var arr = {};


function create(controls){

  for (var controlNumber = 1; controlNumber < Object.keys(controls).length; controlNumber++) {
    for(var i in controls){
    switch (controls[i].name) {
      case "PrmGroupBox"+controlNumber:
        var grpBox = new prmGroupBox(controls[i])
        // console.log(grpBox);
        if(Object.keys(grpBox.controls).length != 0){
          create(grpBox.controls);
        }
        grpBoxes.push(grpBox);
        break;
      case "PrmLabel"+controlNumber:
        var label = new prmLabel(controls[i]);
        labels.push(label);
        break;
      case "PrmTextBox"+controlNumber:
        var textBox = new prmTextBox(controls[i]);
        textBoxes.push(textBox);
        break;
      case "PrmRadioButton"+controlNumber:
        var radioButton = new prmRadioButton(controls[i]);
        radioButtons.push(radioButton);
        break;
      case "PrmCheckBox"+controlNumber:
        var checkBox = new prmCheckBox(controls[i]);
        checkBoxes.push(checkBox);
        break;
      default:
        break;
      }
    }
  }
  arr.groupBox = grpBoxes;
  arr.label = labels;
  arr.textbox = textBoxes;
  arr.radioButton = radioButtons;
  arr.checkBox = checkBoxes;
  return arr;
}

module.exports = { findControls: find , createControls: create };

// createControls();
// console.log(grpBoxes[1]);
// grpBoxes.forEach(function(element){
//   console.log(element);
// });
