var mysql = require('mysql');
var faker = require("faker");
 
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'ismailmajo',  //your username
  database : 'join_us'         //the name of your db
});

// Inserting data

// var q = 'insert into users(email)values("iki_the_dog@gmail.com")';

// connection.query(q, function (error, results, fields) {
//   if (error) throw error;
//   console.log(results);
// });

// var person  = {
//     email:       faker.internet.email(),
//     created_at: faker.date.past()
// };

//  connection.query('INSERT INTO users SET ?', person, function(err, result){
//     if(err) throw err;
//     console.log(result);
// });


// connection.end();


// selectingData
// var q = 'SELECT count(*) as total from users';

// connection.query(q, function (error, results, fields) {
//   if (error) throw error;
//   console.log(results);
// });

var data = [];
for(var i=0; i<500; i++){
    data.push([
    faker.internet.email(),
    faker.date.past()
    ]);
}


    var q  = 'INSERT INTO users (email, created_at) values ?';
    
    connection.query(q,[data],function(err,result){
      console.log(err);
      console.log(result);
    });
connection.end();