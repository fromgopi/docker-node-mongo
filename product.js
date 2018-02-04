var db = require('mongoose');
var Schema = db.Schema;
var productSchema = new Schema({
  title: String,
  price: Number,
  instock: Boolean,
});

module.exports = db.model('Product', productSchema);
