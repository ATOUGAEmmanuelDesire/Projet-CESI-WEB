const db =  require('../utils/dbconnector.js')

exports.submitForm = async (req, res)=>{
    try{

    }catch (error){
        console.error('Erreur lors de l\'insertion des données : ', error);
        res.status(500).json({ message: "Erreur lors de l\'insertion des données" });
    }
}

exports.signForm = async (req, res)=>{
    try{
        const name = req.body.Name
        const surname = req.body.Surname
        const email = req.body.Email_address
        const password =  req.body.Password
        const status = 0
        const localisation = req.body.Localisation

        return await db.query("CALL AddUsers(?,?,?,?,?,?)", [name, surname, email, password, status, localisation])
    }catch (error){
        console.error('Erreur lors de l\'insertion des données : ', error);
        res.status(500).json({ message: "Erreur lors de l\'insertion des données" });
    }
}