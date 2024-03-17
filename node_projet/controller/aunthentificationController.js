const UserModel = require("../models/user");
const jwt = require("jsonwebtoken");
const bcrypt = require('bcrypt');

class AuthController {

    static async login(req, res) {
        const { email, password } = req.body;
        try {
            const user = await UserModel.authenticate(email, password);
            if (user) {
                const passwordMatch = await bcrypt.compare(password, user.password); // Vérification du mot de passe
                if (passwordMatch) {
                    const userId = user.id;
                    const token = jwt.sign({ userId, email }, 'secretkey', { expiresIn: '1h' });
                    console.log(token)
                    res.status(200).json({ message: 'Connexion réussie', user, token });
                } else {
                    console.error("Email ou mot de passe incorrect");
                    res.status(401).json({ message: 'Email ou mot de passe incorrect' });
                }
            } else {
                console.error("Email ou mot de passe incorrect");
                res.status(401).json({ message: 'Email ou mot de passe incorrect' });
            }
        } catch (error) {
            console.error("Erreur lors de l'authentification: ", error);
            res.status(500).json({ message: 'Erreur lors de l\'authentification' });
        }
    }

    static async register(req, res) {
        const { name, surname, email, password, localisation } = req.body;
        const status = 1;
        try {
            const hashedPassword = await bcrypt.hash(password, 10); // Hachage du mot de passe
            const userId = await UserModel.register(name, surname, email, hashedPassword, status, localisation);
            res.status(200).json({ message: 'Utilisateur enregistré avec succès', userId });
            console.log(res.status);
        } catch (error) {
            console.error('Erreur lors de l\'enregistrement de l\'utilisateur: ', error);
            res.status(500).json({ message: 'Erreur lors de l\'enregistrement des données' });
        }
    }

    static async logout(req, res, next) {
        console.log(req.body)
        const value = req.body.value
        try{
            if (value === 1){
                res.status(200).json(2)
            }else{
                console.log("erreur")
            }
        }catch (error){
            res.status(401)
            console.error(error)
        }

    }

    static async verifyToken(req, res, next) {
        try {
            const token = req.headers.authorization.split(' ')[1];
            const decodedToken = jwt.verify(token, 'secretkey');
            const userId = decodedToken.userId;
            req.auth = {

            };
            req.token = token; // Ajouter le token à la requête pour une utilisation ultérieure si nécessaire
            next();
        } catch (error) {
            res.status(401).redirect("/cesi-bde/connexion");
            console.log(error);
        }
    }
}

module.exports = AuthController;