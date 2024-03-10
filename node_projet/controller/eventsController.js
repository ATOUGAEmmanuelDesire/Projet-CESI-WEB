const db = require('../utils/dbconnector')
exports.renderEvents = (req, res, next)=>{
    res.status(200).render('events');
}