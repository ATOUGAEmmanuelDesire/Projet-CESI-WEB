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

app.get('/cesi-bde/accueil', (req, res)=>{
    res.status(200).sendFile('fronTest/accueil.html', {root : __dirname});
})

app.get('/cesi-bde/inscription', (req, res)=>{
    res.status(200).sendFile('frontTest/inscription.php', {root: __dirname});
})
app.get('/cesi-bde/connexion', (req, res)=>{
    res.status(200).sendFile('frontTest/connexion.php', {root: __dirname});
})
app.get('/cesi-bde/social', (req, res)=>{
    res.status(200).sendFile('fronTest/social.html', {root : __dirname});
})
app.get('/cesi-bde/boutique', (req, res)=>{
    res.status(200).sendFile('frontTest/boutique.htm', {root: __dirname});
})

app.listen(3000);
