class PrmTextBox {

    constructor(control, i) {
        this.name = control[i].Property[0].innerXML;
        this.dataBinding = control[i].Property[1].innerXML;
        this.location = control[i].Property[2].innerXML;
        this.size = control[i].Property[3].innerXML;
        this.tabIndex = control[i].Property[4].Property.innerXML;
        this.useWaitCursor = control[i].Property[5].innerXML;
    }

    getControls() {
      return this.controls;
    }
    getDataBinding() {
      return this.dataBinding;
    }
    getLocation() {
      return this.location;
    }
    getName() {
      return this.name;
    }
    getSize() {
      return this.size;
    }
    getTabIndex() {
      return this.tabIndex;
    }
    isUseWaitCursor() {
      return this.useWaitCursor;
    }
  }
  module.exports = PrmTextBox;
  