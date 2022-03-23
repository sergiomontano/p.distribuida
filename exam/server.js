require('dotenv').config()

const express = require('express')
const app = express()
const bodyParser = require('body-parser')
const md5 = require('md5')
const { appConfig } = require('./config/app')
const connection = require('./config/db.js')

global.sesion = false

app.use(bodyParser.urlencoded({ extended: false }))
app.use(express.static('public'));
app.set('view engine', 'pug');

app.get('/', function(req, res) {
    res.render('inicio');
});

app.post('/verify', function(req, res) {
    res.send(sesion)
});

app.post('/off', function(req, res) {
    sesion = false 
    res.send(sesion)
});

app.post('/addpelicula', function(req, res) {
    if(sesion == true){
        connection.query('INSERT INTO pelis (titulo, descripcion, fecha) VALUES (?, ?, ?)',[req.body.titulo, req.body.descripcion, req.body.fecha], function(err, result, fields){
            if(result.affectedRows == 1){
               res.send(true)
            }else{
                res.send(false)
            }
        })
    }
});

app.post('/getData', function(req, res) {
    let sql = 'SELECT * FROM pelis'
    
    connection.query(sql , function(err, resp, fields){
        if(resp.length){
            res.send(resp)
        }else{
            res.redirect('/404')
        }
    })
});

app.get('/404', function(req, res) {
    res.render('404');
});

app.get('/login', function(req, res) {
    res.render('login');
});

app.get('/registro', function(req, res) {
    res.render('registro');
});

app.post('/registroUser', function(req, res) {
    if(req.body.registro == ""){
        let pass  = md5(req.body.pass) //Ciframos la contraseña.
        //Realizamos la query del insert de los datos enviados.
        connection.query('INSERT INTO users (username, email, pass) VALUES (?, ?, ?)',[req.body.username, req.body.email, pass], function(err, result, fields){
            
            if (err){
                throw err; //Si hay un error, lo muestra
                res.redirect('/')
            }
                
            
        })
       }else{
        res.redirect('/')
       }
});

app.post('/auth', function(req, res) {
    
    if(req.body.sesion == ""){
        let pass = md5(req.body.pass)
        
        var sql = 'SELECT id, username, email FROM telematica4c.users WHERE email = "' + req.body.email +'" AND pass = "' + pass +'"';
        
        connection.query(sql , function(err, resp, fields){
            if(resp.length){
                sesion = true;
                res.redirect('/');
            }else{
                res.redirect('/404')
            }
        });
        
    }else{
        res.redirect('/registro')
    }
});

app.listen(appConfig.port, ()=> console.log(`Puesto en marcha en puerto ${appConfig.port}`)) 