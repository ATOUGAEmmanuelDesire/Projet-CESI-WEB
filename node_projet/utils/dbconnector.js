// const mysql =  require('mysql')

// const optionBD = mysql.createConnection({
//     host : 'localhost',
//     use : 'root',
//     password : 'inconnu_X2027',
//     port : '3306',
//     database : 'cesi_bde'
// });
//
// // const pool =  new pool({
// //     host : 'localhost',
// //     use : 'root',
// //     password : 'inconnu_X2027',
// //     port : '3306',
// //     database : 'cesi_bde'
// // })
// optionBD.connect((err) =>{
//     if(err){
//         console.log('Erreur de connexion à la base de données :' + err);
//         return;
//     }else{
//
//     }
// })
//
// module.exports =  optionBD;
const mysql = require('mysql');

const pool = mysql.createPool({
    host: 'localhost',
    user: 'root',
    password: 'inconnu_X2027',
    port: '3306',
    database: 'cesi_bde'
});

module.exports = pool;
