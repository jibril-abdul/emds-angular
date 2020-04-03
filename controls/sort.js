const Control = require('./control');

//Object containing sorted groupboxes. It is returned after running sortControls()
const sortedControls = {};

//Receive controls obejct as parameter after findControls() and create each control
function sortControls(controls) {
  //arrays containing outercontrols by ascending order.
  const outerControls = [];
  for (let controlNumber = 0; controlNumber <= maxTabIndex(controls); controlNumber++) {
    for (let i in controls) {
      if (findTabIndex(controls[i].Property) == controlNumber) {

        let outerControl = new Control(controls[i])
        if (outerControl.hasOwnProperty('controls')) {

          //Add innercontrols inside of each outercontrol.
          outerControl["inner"] = getInnerControl(outerControl.controls);
        }
        //
        outerControls.push(outerControl);
      }
    }
  }
  sortedControls.outerControls = outerControls;
  return sortedControls;
}

//find control property in the form
function findControls(property) {
  let control = property.find((x) => x.name == 'Controls');
  return control.Object;
}
//Find TabIndex of controls
function findTabIndex(property) {
  let tabIndex = property.find((x) => x.name == 'TabIndex');
  return tabIndex.innerXML;
}
//To find number of controls in the form
function maxTabIndex(controls) {
  let arr = [];
  for (let i in controls) {
    arr.push(findTabIndex(controls[i].Property));
  }
  return Math.max.apply(null, arr);
}

//Find inner controls
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