const db = require('../utils/dbconnector');

// formulaire pour l'ajout d'utilisateur
exports.submitForm = (req, res) => {
    const { name, surname, email, password } = req.body;
    const status = 0;
    if (!name || !email || !surname || !password) {
        res.status(400).send('Aucun champ ne doit être vide');
        return;
    }

    const sql = 'CALL AddUser (?, ?, ?, ?,?)';
    db.query(sql, [name, surname, email, password, status], (error, results) => {
        if (error) {
            console.error('Erreur lors de l\'insertion des données: ', error);
            res.status(500).send('Erreur lors de l\'inscription');
            return;
        }
        console.log('Données insérées avec succès dans la base de données');
        res.status(200).send('Compte créé avec succès');
        res.redirect('/cesi-bde/accueil'); // Redirection vers la page d'accueil
    });
};

// formulaire pour la connexion
// exports.signForm = (req, res) => {
//     const { email, password } = req.body;
//
//     if (!email || !password) {
//         res.status(400).send('Email et mot de passe requis');
//         return;
//     }
//
//     const sql = 'CALL Authentification (?, ?)';
//     db.query(sql, [email, password], (error, results) => {
//         if (error) {
//             console.error('Erreur lors de l\'authentification: ', error);
//             res.status(500).send('Erreur lors de la connexion');
//             return;
//         }
//
//         if (results.length === 0) {
//             res.status(401).send('Identifiants invalides');
//             return;
//         }
//
//         console.log('Utilisateur connecté avec succès');
//         res.status(200).send('Connecté avec succès');
//         // Gérer la connexion réussie
//     });
// };
