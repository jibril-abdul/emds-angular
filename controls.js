
var jsonnavi = require('./controls/jsonnavi');


const fs = require('fs');

var json = JSON.parse(fs.readFileSync('./BH_Progress_Assessment.json'));
var property = json['Viklele.FormDesigner'].Object.Property
//Array for each controls


var controls = jsonnavi.createControls(jsonnavi.findControls(property));
console.log(controls.groupBox[0]);
console.log(controls.groupBox[1]);
console.log(controls.radioButton[4].xCoordinate);
console.log(controls.radioButton[4].xCoordinate);
console.log(controls.radioButton[4].xCoordinate);
console.log(controls.radioButton[4].xCoordinate);
