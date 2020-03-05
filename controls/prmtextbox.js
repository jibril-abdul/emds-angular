class PrmTextBox {

  constructor(control) {
    this.type = control.type;
    this.name = control.name;
    this.property = control.Property;

  }

    getName() {
      return this.property[0];
    }
    getDataBinding() {
      return this.property[1];
    }
    getLocation() {
      return this.property[2];
    }
    getSize() {
      return this.property[3];
    }
    getTabIndex() {
      return this.property[4];
    }
    isUseWaitCursor() {
      return this.property[5];
    }
  }
  module.exports = PrmTextBox;
