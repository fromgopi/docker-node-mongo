var express = require('express');
var app = express();
var db = require('mysql');
var cors = require('cors');
var bodyParser = require('body-parser');
var product = require('./product')

app.use(bodyParser.urlencoded({ extended: true}));
app.use(bodyParser.json());
var port = process.env.PORT || 8090;
var router = express.Router();



router.use(function(req,res){
  console.log('Logging will be done here');
  next();
});

app.get('/', function(req, res){
  res.send("Hello World");
});

app.listen(3000, function(){
  console.log('Example app listening on port 3000!');
});
