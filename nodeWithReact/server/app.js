const express = require("express");

var app = express();

app.get("/", (req,res) => {
    res.send({ hi: 'there   '});
});

app.listen(process.env.PORT, process.env.IP,function(){
    console.log("The YelpCamp Server Has Started!");
});
// const PORT = process.env.PORT || 8080;
// app.listen(PORT);