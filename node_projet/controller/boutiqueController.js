const db = require('../utils/dbconnector')
exports.renderBoutique = (req, res, next)=>{
    res.status(200).render('boutique');
}