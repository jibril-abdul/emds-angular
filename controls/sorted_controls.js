const Control = require('./control');

//arrays for saving sorted groupbox by ascending order.
const outerControls = [];

//Object containing sorted groupboxes. It is returned after running create()
const sortedControls = {};

//Receive controls obejct as parameter after findControls() and create each control
function sortControls(controls) {
  for (let controlNumber = 0; controlNumber <= maxTabIndex(controls); controlNumber++) {
    for (let i in controls) {
      if (findTabIndex(controls[i].Property) == controlNumber) {
        let outerControl = new Control(controls[i])
        if (outerControl.hasOwnProperty('controls')) {

          //Add inner controls  into groupbox
          outerControl["inner"] = getInnerControl(outerControl.controls);
        }
        //Recursively finds nested controls inside of groupBoxes(radioButtons,checkBoxes, textBoxes)
        outerControls.push(outerControl);
      }
    }
  }
  sortedControls.outerControls = outerControls;
  return sortedControls;
}


//find property of controls in a form and return its object
function findControls(property) {
  for (let i in property) {
    if (property[i].name == 'Controls') {
      return property[i].Object;
    }
  }
}
//Find
function findTabIndex(property) {
  for (let i in property) {
    if (property[i].name == 'TabIndex') {
      return property[i].innerXML;
    }
  }

}

function maxTabIndex(controls) {
  for (let i in controls) {
    let arr = [];
    arr.push(findTabIndex(controls[i].Property));
    return Math.max.apply(null, arr)
  }
}

function getInnerControl(controls) {
  let innerControls = [];
  for (let controlNumber = 0; controlNumber < Object.keys(controls).length; controlNumber++) {
    for (let i in controls) {
      if (findTabIndex(controls[i].Property) == controlNumber) {
        let innerControl = new Control(controls[i]);
        innerControls.push(innerControl);
      }
    }
  }
  return innerControls;
}




module.exports = {
  findControls: findControls,
  sortControls: sortControls,
};
