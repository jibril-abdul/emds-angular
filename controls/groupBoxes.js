const Control = require('./control');


//arrays for saving sorted groupbox by ascending order.
const grpBoxes = [];

//Object containing each control arrays. It is returned after running create()
const arr = {};


//find property of controls in a form and return its object
function findControls(property) {
  for (var i in property) {
    if (property[i].name == 'Controls') {
      return property[i].Object;
    }
  }
}

function findTabIndx(property) {
  for (var i in property) {
    if (property[i].name == 'TabIndex') {
      return property[i].innerXML;
    }
  }

}

function getInnerControl(controls) {
  var inner = [];
  for (var controlNumber = 0; controlNumber < Object.keys(controls).length; controlNumber++) {
    for (var i in controls) {
      if (findTabIndx(controls[i].Property) == controlNumber) {
        let control = new Control(controls[i]);
        inner.push(control);
      }
    }
  }
  return inner;
}

//Receive controls obejct as parameter after find() and create each control
//obejcts to push into array.
function createBoxes(controls) {

  for (var controlNumber = 1; controlNumber < Object.keys(controls).length; controlNumber++) {
    for (var i in controls) {
      if (controls[i].name == "PrmGroupBox" + controlNumber) {
        let grpBox = new Control(controls[i])

        if (Object.keys(grpBox.controls).length != 0) {
          grpBox["inner"] = getInnerControl(grpBox.controls);
        }

        //Recursively finds nested controls inside of groupBoxes(radioButtons,checkBoxes, textBoxes)
        grpBoxes.push(grpBox);
      }
    }
  }
  arr.groupBox = grpBoxes;
  return arr;
}


module.exports = {
  findControls: findControls,
  createBoxes: createBoxes
};
