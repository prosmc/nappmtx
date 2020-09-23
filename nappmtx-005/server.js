
var express = require("express");
var https = require("https");
var path = require("path");
var morgan = require("morgan");
var fs = require("fs");
const { exec } = require('child_process');

// ----------------------------------------
// DEFINE VARIABLES
// ----------------------------------------

const default_port=8443;
const default_log_level='error';
var port;
var log_level;

(process.env.APP_PORT === null) ? port = default_port : port = process.env.APP_PORT;
(process.env.APP_LOG_LEVEL === null) ? log_level = default_log_level : log_level = process.env.APP_LOG_LEVEL;

var sslPath = path.resolve(__dirname, "ssl");
var publicPath = path.resolve(__dirname, "public")

var app = express();

// ----------------------------------------
// DEFINE MIDDLEWARE
// ----------------------------------------

app.use(morgan("combined"));
app.use(express.static(publicPath));
app.use(function(req, res) {
   res.status(404).send("Page not found!");
});

// ----------------------------------------
// DEFINE SERVER
// ----------------------------------------

var httpsOptions = {
  key: fs.readFileSync(sslPath + "/key.pem"),
  cert: fs.readFileSync(sslPath + "/cert.pem")
};

https.createServer(httpsOptions, app).listen(port, function() {
   console.log(`APP - Port: ${port}`);
});
