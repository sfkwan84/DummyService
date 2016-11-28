var express = require('express')
var app = express();
var ip = require("ip");

app.get('/', function(req, res) {
	res.send('service 1 -- ' + ip.address());
});

var server = app.listen(8080, function () {
    var host = ip.address();
    var port = server.address().port;

    console.log("Example app listening at http://%s:%s", host, port)
});