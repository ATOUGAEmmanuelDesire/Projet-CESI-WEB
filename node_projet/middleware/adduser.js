const db = require('../utils/dbconnector');

const addUser = (req, res, next) => {
    const name = req.body.name;
    const surname = req.body.surname;
    const email = req.body.email;
    const password = req.body.password;

    db.query('CALL AddUser(?,?,?,?)', [name, surname, email, password], (err, results) => {
        if (err) {
            console.error('Erreur lors de l\'appel de la procédure: ' + err);
            return res.status(500).send('Erreur lors de l\'inscription');
        }
        console.log('Utilisateur ajouté avec succès');
        res.status(200).send('Compte créer avec succès');
    });
};

module.exports = addUser;
