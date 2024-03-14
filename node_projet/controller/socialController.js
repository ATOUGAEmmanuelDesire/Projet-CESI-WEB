exports.renderSocial = async (req, res)=>{
    try{
        const [rows] = await db.query("SELECT")
        res.status(200).render('social', {social: rows})
    }catch (error){
        console.error('Erreur lors de la récupération des données : ', error);
        res.status(500).json({ message: "Erreur lors de la récupération des données" });
    }
}

