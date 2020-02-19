class Prmbox {

  constructor(control, i){
    this.isTabStop = control[i].Property[0].innerXML;
    this.getTitle = control[i].Property[1].innerXML;
    this.isUseCompatibleTextRendering = control[2].Property[6].innerXML;
    this.getControls = control[i].Property[3].innerXML;
    this.getDataBinding = control[i].Property[4].Property.innerXML;
    this.getLocation = control[i].Property[5].innerXML;
    this.name = control[i].Property[6].innerXML;
    this.getSize = control[i].Property[7].innerXML;
    this.getTabIndex = control[i].Property[8].innerXML;
    this.isUseWaitCursor = control[i].Property[9].innerXML;
  }

  isTabStop(){
    return this.isTabStop;
  }
  getTitle(){
    return this.getTitle;
  }
  isUseCompatibleTextRendering(){
    return this.isUseCompatibleTextRendering;
  }
  getControls(){
    return this.getControls;
  }
  getDataBinding(){
    return this.getDataBinding;
  }
  getLocation(){
    return this.getLocation;
  }
  getName(){
    return this.name;
  }
  getSize(){
    return this.getSize;
  }
  getTabIndex(){
    return this.getTabIndex;
  }
  isUseWaitCursor(){
    return this.isUseWaitCursor;
  }


}
module.exports = Prmbox;
