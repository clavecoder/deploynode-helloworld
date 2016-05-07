var express = require('express');

var port = 8087;

var app = express();

app.get('/', function(req, res) {
    res.send('You just deployed some Node!\n ')
});

app.listen(port);

console.log('Running on http://localhost:' + port);
