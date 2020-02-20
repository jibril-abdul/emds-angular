class PrmLabel {

    constructor(control,i) {
        this.textAlign = control[i].Property[0].innerXML;
        this.text = control[i].Property[1].innerXML;
        this.useCompatibleTextRendering = control[i].Property[2].innerXML;
        this.dataBinding = control[i].Property[3].Property.innerXML;
        this.location = control[i].Property[4].innerXML;
        this.name = control[i].Property[5].innerXML;
        this.size = control[i].Property[6].innerXML;
        this.tabIndex = control[i].Property[7].innerXML;
        this.useWaitCursor = control[i].Property[8].innerXML;
    }
  
    isTextAlign() {
      return this.textAlign;
    }
    getText() {
      return this.text;
    }
    isUseCompatibleTextRendering() {
      return this.useCompatibleTextRendering;
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
    getfont() {
      return this.font;
    }
  
  
  }
  module.exports = PrmLabel;
  