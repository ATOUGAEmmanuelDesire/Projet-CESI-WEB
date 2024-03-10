const db = require('../utils/dbconnector')
exports.renderConnexion = (req, res, next)=>{
    res.status(200).render('connexion');
}