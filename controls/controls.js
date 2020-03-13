
const PrmGroupBox = require('./prmgroupbox');
const PrmLabel = require('./prmlabel');
const PrmTextBox = require('./prmtextbox');
const PrmRadioButton = require('./prmradiobutton');
const PrmCheckBox = require('./prmcheckbox');



//find property of controls in a form and return its object
function find(property){
    for(var i in property){
        if(property[i].name == 'Controls'){
            return property[i].Object;
        }
    }
}

//arrays for saving each controls by number
const grpBoxes = [];
const labels = [];
const checkBoxes = [];
const radioButtons = [];
const textBoxes = [];
//Object containing each control arrays. It is returned after running create()
var arr = {};

//Receive controls obejct as parameter after find() and create each control
//obejcts to push into array.
function create(controls){

  for (var controlNumber = 1; controlNumber < Object.keys(controls).length; controlNumber++) {
    for(var i in controls){
    switch (controls[i].name) {
      case "PrmGroupBox"+controlNumber:
        var grpBox = new PrmGroupBox(controls[i])
        //Recursively finds nested controls inside of groupBoxes(radioButtons,checkBoxes, textBoxes)
        if(Object.keys(grpBox.controls).length != 0){
          create(grpBox.controls);
        }
        grpBoxes.push(grpBox);
        break;
      case "PrmLabel"+controlNumber:
        var label = new PrmLabel(controls[i]);
        labels.push(label);
        break;
      case "PrmTextBox"+controlNumber:
        var textBox = new PrmTextBox(controls[i]);
        textBoxes.push(textBox);
        break;
      case "PrmRadioButton"+controlNumber:
        var radioButton = new PrmRadioButton(controls[i]);
        radioButtons.push(radioButton);
        break;
      case "PrmCheckBox"+controlNumber:
        var checkBox = new PrmCheckBox(controls[i]);
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
