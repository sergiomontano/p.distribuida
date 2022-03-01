require('dotenv').config()
const express = require('express')
const app = express()
const { appConfig } = require('./lib/config')
const connection = require('./db/conf');

app.get('/', function(req, res) {
  res.sendfile('./views/index.html');
    let ts = Date.now();
    console.log(ts);
});

// connection.query('INSERT INTO db_name() VALUES ()')

app.listen(appConfig.port, ()=> console.log(`Puesto en marcha en puerto ${appConfig.port}`)) 