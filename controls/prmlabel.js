
class PrmLabel {

  constructor(control) {
    this.type = control.type;
    this.name = control.name;
    this.property = control.Property;

  }
    getTextAlign() {
      return this.property[0];
    }
    getText() {
      return this.property[1];
    }
    isUseCompatibleTextRendering() {
      return this.property[2];
    }
    getDataBinding(){
      return this.property[3].Property;
    }
    getLocation() {
      return this.property[4].Property;
    }
    getName() {
      return this.property[5];
    }
    getSize() {
      return this.property[6];
    }
    getTabIndex() {
      return this.property[7];
    }
    isUseWaitCursor() {
      return this.property[8];
    }

  }
  module.exports = PrmLabel;
