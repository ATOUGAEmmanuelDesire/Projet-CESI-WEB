const db = require('../utils/dbconnector')

exports.renderEvents = async (req, res, next)=>{
    try{
        const [rows] = await db.query("SELECT *  FROM events WHERE statut=1")
        res.render('events', {events: rows})
    }catch (error){
        console.error('Erreur lors de la récupération des données : ', error);
        res.status(500).json({ message: "Erreur lors de la récupération des données" });
    }

}

exports.addgoodies =  async (req, res)=>{
    try{
        const request = req.query("INSERT INTO evnts ")
    }catch (error){
        console.error('Erreur lors de l\'insertion', error)
        res.status(500).json({message: "Erreur lors de l'enregistrement du produit veillez réesayer plus tard"})
    }
}

