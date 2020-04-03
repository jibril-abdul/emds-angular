const express = require('express');

function createRouter(db) {

	const router = express.Router();
	const name = '';

  // the routes are defined here
  router.get('/xmlhtmltable', function (req, res, next) {
    db.query(
      'SELECT XMLData from xmlhtmltable where Name = ?',
      req.query.name,
      (err, res) => {
         if (err) {
            console.log(error);
          } else { 
           console.log(res);
          }
      }
    );
  });

  return router;
}

module.exports = createRouter;

//http://localhost:8080/xmlhtmltable?name=BH_Progress_Assessment