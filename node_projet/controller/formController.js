const db =  require('../utils/dbconnector.js')


exports.submitForm = async (req, res)=>{
    const name = req.body.Name
    const surname = req.body.Surname
    const email = req.body.Email_address
    const password =  req.body.Password
    const status = 0
    const localisation = req.body.Localisation
    try{
        const request =  req.query("INSERT INTO Users(Name, Surname, Email_address, Password, Statut, Localisation) VALUES" [name, surname, email ,password, status, localisation])
        db.execute(request)
        res.status(200).render('accueil')
    }catch (error){
        console.error('Erreur lors de l\'insertion des données : ', error);
        res.status(500).json({ message: "Erreur lors de l\'insertion des données" });
    }
}

exports.signForm = async (req, res)=>{
    const name = req.body.Name
    const surname = req.body.Surname
    const email = req.body.Email_address
    const password =  req.body.Password
    const status = 0
    const localisation = req.body.Localisation
    try{
        // await db.query("INSERT INTO Users(?,?,?,?,?,?)", [name, surname, email, password, status, localisation])
        const insert = await db.query("CALL AddUser(?,?,?,?,?,?)", [name, surname, email, password, status, localisation])
        res.return(insert)
        res.status(200).send("/cesi-bde/accueil")

    }catch (error){
        console.error('Erreur lors de l\'insertion des données : ', error);
        res.status(500).json({ message: "Erreur lors de l\'insertion des données" });
    }
}