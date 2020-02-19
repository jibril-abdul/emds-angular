class Prmbox {

  constructor(control, i) {
    if (i == 2) {
      this.tabStop = control[i].Property[0].innerXML;
      this.title = control[i].Property[1].innerXML;
      this.useCompatibleTextRendering = control[i].Property[2].innerXML;
      this.controls = control[i].Property[3].innerXML;
      this.dataBinding = control[i].Property[4].Property.innerXML;
      this.font = control[i].Property[5].innerXML;
      this.location = control[i].Property[6].innerXML;
      this.name = control[i].Property[7].innerXML;
      this.size = control[i].Property[8].innerXML;
      this.tabIndex = control[i].Property[9].innerXML;
      this.useWaitCursor = control[i].Property[10].innerXML;
    } else {
      this.tabStop = control[i].Property[0].innerXML;
      this.title = control[i].Property[1].innerXML;
      this.useCompatibleTextRendering = control[i].Property[2].innerXML;
      this.controls = control[i].Property[3].innerXML;
      this.dataBinding = control[i].Property[4].Property.innerXML;
      this.location = control[i].Property[5].innerXML;
      this.name = control[i].Property[6].innerXML;
      this.size = control[i].Property[7].innerXML;
      this.tabIndex = control[i].Property[8].innerXML;
      this.useWaitCursor = control[i].Property[9].innerXML;
    }
  }

  isTabStop() {
    return this.tabStop;
  }
  getTitle() {
    return this.title;
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
module.exports = Prmbox;
