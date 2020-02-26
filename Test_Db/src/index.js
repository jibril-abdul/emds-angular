const express = require('express');
const cors = require('cors');
const bodyParser = require('body-parser');
const mysql = require('mysql');
const xmlhtmltable = require('./xmlhtmltable');

const connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'test',
  password : 'password',
  database : 'test'
});

connection.connect();

const port = process.env.PORT || 8080;

const app = express()
  .use(cors())
  .use(bodyParser.json())
  .use(xmlhtmltable(connection));

app.listen(port, () => {
  console.log(`Express server listening on port ${port}`);
});