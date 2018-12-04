var express = require("express");
var mysql = require("mysql");
var bodyParser = require("body-parser");
var faker = require("faker");
var app = express();

app.set('view engine', 'ejs');
app.use(bodyParser.urlencoded({extended:  true}));
app.use(express.static(__dirname + "/public"));
 
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'ismailmajo',  //your username
  database : 'join_us'         //the name of your db
});


app.get('/', function(req,res){
  //find count of our users in DB
  var q = "select count(*) as counter from users";
    connection.query(q, function(err,results){
        if(err) throw err;
        var count  = results[0].counter;
        res.render("home",{count: count});
    });
    
});


app.post("/register", function (req,res) {
     var person = {
         email: req.body.email
         };
      
    //   var q = "INSERT INTO users (email) VALUES (" + req.body.email + ")"
    //   var q = "INSERT INTO users (email) VALUES ('isamil@smart.com')"|
      
           connection.query('insert into users set ?', person,function(err,result){
         if (err) throw err;
         res.redirect("/");
     })
});


app.get("/joke",function(req,res){
    var joke = "What do you call  a dog that does magic tricks?  A labracadabrador."
         res.send(joke);
});
app.get("/random_num",function(req, res) {

var x = Math.floor(Math.random()*10) + 1;
 
    res.send("you lucky number is:" + x);
});
    
app.listen(8080, function(){
    console.log("server is running...")
});