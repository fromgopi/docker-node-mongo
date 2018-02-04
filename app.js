var express = require('express');
var app = express();
var db = require('mongoose');
var cors = require('cors');
var bodyParser = require('body-parser');
var product = require('./product')

app.use(bodyParser.urlencoded({ extended: true}));
app.use(bodyParser.json());
var port = process.env.PORT || 8090;
var route = express.Router();


db.connect('mongodb://mongo:27017/products');

app.get('/', function(req, res){
  res.send("Hello World");
});

app.listen(3000, function(){
  console.log('Example app listening on port 3000!');
});
