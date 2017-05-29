//starter code
var mysql = require("mysql");
var inquirer = require("inquirer");
var table = require("console.table");

var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "test",
  database: "bamazon"
});

connection.connect(function(err) {
  if (err) throw err;
  itemSearch();
});

     connection.query("SELECT * FROM products", function(err, res) {
    if (err) throw err;
    console.table(res)
  });



var itemSearch = function() {
  inquirer.prompt({
    name: "item_id",
    type: "input",
    message: "What is the item ID?"
  }).then(function(answer) {
    var query = "SELECT item_id FROM products WHERE ?";
    connection.query(query, { item_id: answer.name }, function(err, res) {
      for (var i = 0; i < res.length; i++) {
        console.log("item_id: " + res[i].item_id);
      }
      itemSearch();
    });
  });
};
