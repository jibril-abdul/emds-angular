class PrmCheckBox {

  constructor(control) {
    this.type = control.type;
    this.name = control.name;
    this.property = control.Property;

  }

    getFlatStyle(){
      return this.property[0];
    }

    getText() {
      return this.property[1];
    }
    isUseCompatibleTextRendering() {
      return this.property[2];
    }
    isUseVisualStyleBackColor() {
      return this.property[3];
    }
    getDataBinding() {
      return this.property[4].Property;
    }
    getLocation() {
      return this.property[5];
    }
    getName() {
      return this.property[6];
    }
    getSize() {
      return this.property[7];
    }
    getTabIndex() {
      return this.property[8];
    }
    isUseWaitCursor(){
      return this.property[9];
    }

  }
  module.exports = PrmCheckBox;
