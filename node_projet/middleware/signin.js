const db =  require('../utils/dbconnector')
const {query} = require("express");

const signIn = (req, res, next) =>{
    const name = req.body.name;
    const surname = req.body.surname;
    const email = req.body.email;
    const password = req.body.password;
    try{
        db.query('CALL ListeUsers');
        const {rows} = pool.query(query);
        res.json(rows)
    }catch (err){
        console.error('Erreur lors de la récupération des données: ', err)
        res.status(500).json({message: 'Erreur serveur'})
    }
}

module .exports = signIn;