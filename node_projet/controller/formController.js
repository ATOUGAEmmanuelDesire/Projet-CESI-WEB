const db = require('../utils/dbconnector');
exports.submitForm = (req, res)=>{
    const {name, surname, email, password} = req.body

    if (!name || !email || !surname || !password){
        res.status(400).send('Aucun champ ne dois être vide')
        return;
    }

    const sql = 'CALL AddUser (?,?,?,?)'
    db.query(sql, [name, email, email, password], (error, results)=>{
        if (error){
            console.error('Erreur lors de l\'insertion des données: ', error)
            res.status(500).send('Erreur lors de l\'inscription')
            return;
        }
        console.log('Données insérées avec succès dans la base de données')
        res.status(200).send('Compte créer avec succès')
    })
}