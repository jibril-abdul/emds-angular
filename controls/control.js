function Control(controls) {
    this.type = controls.type;
    this.name = controls.name;
    for (let i in controls.Property) {
      switch (controls.Property[i].name) {

        case "AutoUseParentDataObject":
          this.autoUseParentDataObject = controls.Property[i].innerXML;
          break;

        case "TextAlign":
          this.textAlign = controls.Property[i].innerXML;
          break;

        case "UseVisualStyleBackColor":
          this.useVisualStyleBackColor = controls.Property[i].innerXML;
          break;
        case "FlatStyle":

          this.tabStop = controls.Property[i].innerXML;
          break;
        case "TabStop":

          this.tabStop = controls.Property[i].innerXML;
          break;

        case "Controls":
          this.controls = controls.Property[i].Object;
          break;

        case "UseCompatibleTextRendering":
          this.useCompatibleTextRendering = controls.Property[i].innerXML;
          break;

        case "Text":
          this.text = controls.Property[i].innerXML;
          break;

        case "Font":
          this.font = controls.Property[i].innerXML;
          break;

        case "DataBindings":
          this.dataBindings = controls.Property[i];
          break;

        case "Location":
          this.location = controls.Property[i].innerXML;
          let locationArr = this.location.split(',' + ' ');
          this.xCoordinate = locationArr[0];
          this.yCoordinate = locationArr[1];
          break;

        case "Name":
          this.name = controls.Property[i].innerXML;
          break;

        case "Size":
          this.size = controls.Property[i].innerXML;
          break;

        case "TabIndex":
          this.tabIndex = controls.Property[i].innerXML;
          break;

        case "UseWaitCursor":
          this.useWaitCursor = controls.Property[i].innerXML;
          break;

        default:
          break;
      }
    }
}

module.exports = Control;
