const mysql =  require('mysql')
const optionBD = mysql.createConnection({
    host : 'localhost',
    use : 'root',
    password : 'inconnu_X2027',
    port : '3306',
    database : 'cesi_bde'
});

optionBD.connect((err) =>{
    if(err){
        console.log('Erreur de connexion à la base de données :' + err);
    }
    console.log('Connexion à la base de données réussie')
})

module.exports =  optionBD;