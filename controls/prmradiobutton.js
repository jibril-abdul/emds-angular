class PrmRadioButton {

  constructor(control) {
    this.type = control.type;
    this.name = control.name;
    this.property = control.Property;

  }
  isAutoUseParentDataObject(){
    return this.property[0]
  }
  isTabStop(){
    return this.property[1];
  }
  getText(){
      return this.property[2];
  }
  isUseCompatibleTextRendering(){
    return this.property[3];
  }
  isUseVisualStyleBackColor(){
    return this.property[4];
  }
  getDataBinding(){
    return this.property[5].Property;
  }

  getLocation(){
    return this.property[6];
  }
  getName(){
    return this.property[7];
  }
  getSize(){
    return this.property[8];
  }
  getTabIndex(){
    return this.property[9];
  }
  isUseWaitCursor(){
    return this.property[10];
  }


}
module.exports = PrmRadioButton;
