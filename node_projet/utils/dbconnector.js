// const mysql = require('mysql');
// const expressMyConnection = require('express-myconnection');
//
// const optionBD = {
//     host: 'localhost',
//     user: 'root',
//     password: 'inconnu_X2027',
//     port: '3306',
//     database: 'cesi_bde'
// };
//
// const dbOptions = {
//     connectionLimit: 10,
//     host: optionBD.host,
//     user: optionBD.user,
//     password: optionBD.password,
//     port: optionBD.port,
//     database: optionBD.database
// };
//
// module.exports = expressMyConnection(mysql, dbOptions, 'pool');

// import mysql from 'mysql2'
const mysql = require('mysql2')
const dotenv = require('dotenv')
dotenv.config()
const pool = mysql.createPool({
    host: process.env.HOST,
    user: process.env.MYSQL_USER,
    password: process.env.MYSQL_PASSWORD,
    port: process.env.MYSQL_PORT,
    database: process.env.MYSQL_DATABASE
})

module.exports = pool.promise()