    const mysql = require('mysql');

    // First you need to create a connection to the database
    // Be sure to replace 'user' and 'password' with the correct values
    const con = mysql.createConnection({
        host: 'localhost',
        user: 'test',
        password: 'password',
        database: 'test'
      });

class MySql {

    constructor() {
        this.initConnection();
        //this.initQuery();
        //this.end();
    }

    initConnection() {
        con.connect((err) => {
            if(err){
              console.log('Error connecting to Db');
              return;
            }
            console.log('Connection established');
          });
    }

    initQuery(res) {
        con.query('SELECT xmldata FROM xmlhtmltable where name="BH_Progress_Assessment"', (err,rows) => {
            if(err) throw err;
          
            console.log('Data received from Db:');
            //console.log(rows);
            //return rows + "";
            res.write(rows[0] + "");
            res.end();
          });
    }

    end() {
        con.end((err) => {
            // The connection is terminated gracefully
            // Ensures all remaining queries are executed
            // Then sends a quit packet to the MySQL server.
          });
    }
}

module.exports = MySql