const db = require('../utils/dbconnector')
exports.renderInscription = (req, res, next)=>{
    res.status(200).render('inscription');
}