const db = require('../utils/dbconnector')
exports.renderNotfound =  (req, res, next)=>{
    res.status(200).render('notfound');
}