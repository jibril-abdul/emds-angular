class Prmgroupbox {

  constructor(control) {
    this.type = control.type;
    this.name = control.name;
    this.property = control.Property;
  }

  isTabStop() {
    return this.property[0];
  }
  getTitle() {
    return this.property[1];
  }
  isUseCompatibleTextRendering() {
    return this.property[2];
    }
  getControls() {
    return this.property[3];
  }
  // getDataBinding() {
  //   return this.dataBinding;
  // }
  // getLocation() {
  //   return this.location;
  // }
  // getName() {
  //   return this.name;
  // }
  // getSize() {
  //   return this.size;
  // }
  // getTabIndex() {
  //   return this.tabIndex;
  // }
  // isUseWaitCursor() {
  //   return this.useWaitCursor;
  // }
  // getfont() {
  //   return this.font;
  // }


}
module.exports = Prmgroupbox;
