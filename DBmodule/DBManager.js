const mysql = require('mysql');

let pool = mysql.createPool({
  connectionLimit: 10, // default = 10
  host: 'localhost',
  user: 'root',
  password: 'password',
  database: 'assessment'
});

module.exports.select = (paraName, callback) => {
  let sql = "SELECT xmldata FROM xmlhtmltable WHERE Name = ?";
  pool.query(sql, paraName, (err, result, fields) => {
    if (err) {
      console.log(err);
    } else {
        if(result.length > 0){
          let xml = result[0].xmldata;
          if (typeof callback == "function") {
            callback(xml);
        }
      }
    }
  });
};