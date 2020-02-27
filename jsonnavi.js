
const fs = require('fs');
const prompt = require('prompt')
//var jsonRequest = prompt("Enter a json file: ");

var json = JSON.parse(fs.readFileSync('./BH_Progress_Assessment.json'));
var jsonProp = json['Viklele.FormDesigner'].Object.Property
const grpboxtype = 'iMedica.Prm.Client.UI.BaseControls.PrmGroupBox, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null'
const labeltype = 'iMedica.Prm.Client.UI.BaseControls.PrmLabel, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null'
const textboxtype = 'iMedica.Prm.Client.UI.BaseControls.PrmTextBox, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null'

function findControls(jsonProp){
    for(var i in jsonProp){
        if(jsonProp[i].name == 'Controls'){
            return jsonProp[i];
        }
    }
}

function findGroupBox(controls){
    for(var i in controls){
        if(controls[i].type == grpbox){
            return controls[i].Property;
        }
    }
}

function findLabel(controls){
    for(var i in controls){
        if(controls[i].type == labeltype){
            return controls[i].Property;
        }
    }
}

function findTextBox(controls){
    for(var i in controls){
        if(controls[i].type == textboxtype){
            return controls[i].Property;
        }
    }
}


var controls = findControls(jsonProp).Object;
var groupbox = findGroupBox(controls);
var label = findLabel(controls);
var textbox = findTextBox(controls);
console.log(groupbox);