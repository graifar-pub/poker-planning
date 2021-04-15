var express = require('express');
const app = express();

app.use(express.static(__dirname));

app.get('/hi', function (req, res) {
  res.send('Hi There you');
});

const port = 3000;

var server = app.listen(port, function () {
  console.log('Listening on port', server.address().port);
})

