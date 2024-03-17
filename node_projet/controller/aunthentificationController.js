const UserModel = require("../models/user");
const jwt = require("jsonwebtoken");

class AuthController {
    static blacklist = [];

    static async login(req, res) {
        const { email, password } = req.body;
        try {
            const user = await UserModel.authenticate(email, password);
            if (user) {
                const userId = user.id;
                const token = jwt.sign({ userId, email }, 'secretkey', { expiresIn: '1h' });
                console.log(token)
                res.status(200).json({ message: 'Connexion réussie', user, token });
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
            const userId = await UserModel.register(name, surname, email, password, status, localisation);
            res.status(200).json({ message: 'Utilisateur enregistré avec succès', userId });
            console.log(res.status);
        } catch (error) {
            console.error('Erreur lors de l\'enregistrement de l\'utilisateur: ', error);
            res.status(500).json({ message: 'Erreur lors de l\'enregistrement des données' });
        }
    }

    static async logout(req, res, next) {
        const token = req.headers.authorization.split(' ')[1];
        AuthController.blacklist.push(token);
        res.status(200).send('/cesi-bde/connexion');
    }

    static async verifyToken(req, res, next) {
        try {
            const token = req.headers.authorization.split(' ')[1];
            const decodedToken = jwt.verify(token, 'secretkey');
            const userId = decodedToken.userId;
            req.auth = {
                userId: userId
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