const express = require('express');

const mysql = require('mysql');
const myConnection = require('express-myconnection');

const optionbd = {
    host : 'localhost',
    user : 'root',
    password : 'inconnu_X2027',
    port : '3306',
    database : 'cesi_bde'
};

const app = express();

app.get('/accueil', (req, res)=>{
    res.status(200).sendFile('fronTest/accueil.html', {root : __dirname});
})
app.listen(3000);
