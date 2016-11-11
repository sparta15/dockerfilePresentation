var http = require('http');

var server = http.createServer((request, response) => {
  response.writeHead(200, {"Content-Type": "text/plain"});
  text = "Running Node.js:" + process.versions.node
  text += "Mongo Servers: " + process.env.MONGODB

  response.end(text);

});

var port = process.env.PORT || 8080;
server.listen(port);

// Put a friendly message on the terminal
console.log("Server running at http://127.0.0.1:" + port + "/");
