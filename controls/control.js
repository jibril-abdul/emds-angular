class Control {

  constructor(control) {
    this.type = control.type;
    this.name = control.name;

    for (let i in control.Property) {
      switch (control.Property[i].name) {

        case "AutoUseParentDataObject":
          this.autoUseParentDataObject = control.Property[i].innerXML;
          break;

        case "TextAlign":
          this.textAlign = control.Property[i].innerXML;
          break;

        case "UseVisualStyleBackColor":
          this.useVisualStyleBackColor = control.Property[i].innerXML;
          break;
        case "FlatStyle":

          this.tabStop = control.Property[i].innerXML;
          break;
        case "TabStop":

          this.tabStop = control.Property[i].innerXML;
          break;

        case "Controls":
          this.controls = control.Property[i].Object;
          break;

        case "UseCompatibleTextRendering":
          this.useCompatibleTextRendering = control.Property[i].innerXML;
          break;

        case "Text":
          this.text = control.Property[i].innerXML;
          break;

        case "Font":
          this.font = control.Property[i].innerXML;
          break;

        case "DataBindings":
          this.dataBindings = control.Property[i];
          break;

        case "Location":
          this.location = control.Property[i].innerXML;
          let locationArr = this.location.split(',' + ' ');
          this.xCoordinate = locationArr[0];
          this.yCoordinate = locationArr[1];
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
module.exports = Control;
