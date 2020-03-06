
class PrmLabel {

  constructor(control) {
    this.type = control.type;
    this.name = control.name;
      for(var i in control.Property){
        switch(control.Property[i].name){
          case "TextAlign":
            this.textAlign = control.Property[i].innerXML;
            break;
          
          case "Text":
            this.text = control.Property[i].innerXML;
            break;
          
          case "UseCompatibleTextRendering":
            this.useCompatibleTextRendering = control.Property[i].innerXML;
            break;
          
          case "DataBindings":
            this.dataBindings = control.Property[i];
            break;
          
          case "Location":
            this.location = control.Property[i].innerXML;
            break;
          
          case "Name":
            this.name = control.Property[i].innerXML;
            break;

          case "Size":
            this.size = control.Property[i].innerXML;
            break;

          case "TabIndex":
            this.tabIndex = control.Property[i].innerXML;
            break;

          case "UseWaitCursor":
            this.useWaitCursor = control.Property[i].innerXML;
            break;

          default:
            break;
        }
      }
    }
  }
  module.exports = PrmLabel;
