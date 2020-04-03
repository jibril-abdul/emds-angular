const parseString = require('xml2js').parseString;
const config = {
  explicitArray: false,
  charkey: "innerXML",
  explicitCharkey: true,
  mergeAttrs: true
}

module.exports.xmltojson = (xml, callback) => {
  parseString(xml, config, (err, result) => {
    if (err) {
      console.log(err);
    } else {
      if (typeof callback == "function") {
            callback(result);
      }
    }
  });
}
