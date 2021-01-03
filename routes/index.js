var express = require('express');
var router = express.Router();

count = 0
/* GET home page. */
router.get('/', function(req, res, next) {
  
  setInterval(()=>{
    count =count+1
    console.log(count)
  },5000);
  res.render('index', { count: count });
});

module.exports = router;
