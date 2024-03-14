const db = require('../utils/dbconnector');

// Fonction pour afficher la boutique
exports.renderBoutique = async (req, res, next) => {
    try {
        const [rows] = await db.query("SELECT * FROM goodies");
        // const [rows] = await db.query("CALL GetGoodies");
        res.render('boutique', { produits: rows })
    } catch (error) {
        console.error('Erreur lors de la récupération des données : ', error);
        res.status(500).json({ message: "Erreur lors de la récupération des données" });
    }
};


