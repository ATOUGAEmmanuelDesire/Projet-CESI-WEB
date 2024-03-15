const UserModel = require("../models/user");
const jwt = require("jsonwebtoken");

class AuthController {
    static async login(req, res) {
        const { email, password } = req.body;
        try {
            const user = await UserModel.authenticate(email, password);
            if (user) {
                const userId = user.id;
                const token = jwt.sign({ userId, email }, 'secretKey', { expiresIn: '4h' });
                res.status(200).json({ message: 'Connexion réussie', user, token });
            } else {
                res.status(401).json({ message: 'Email ou mot de passe incorrect' });
            }
        } catch (error) {
            console.error("Erreur lors de l'authentification: ", error);
            res.status(500).json({ message: 'Erreur lors de l\'authentification' });
        }
    }

    static async register(req, res) {
        const { name, surname, email, password, localisation, status } = req.body;
        try {
            const userId = await UserModel.register(name, surname, email, password, localisation, status);
            res.status(201).json({ message: 'Utilisateur enregistré avec succès', userId });
        } catch (error) {
            console.error('Erreur lors de l\'enregistrement de l\'utilisateur: ', error);
            res.status(500).json({ message: 'Erreur lors de l\'enregistrement des données' });
        }
    }

    static async verifyToken(req, res, next) {
        const token = req.headers.authorization;
        if (!token) return res.status(401).json({ message: 'Token non fourni' });

        jwt.verify(token, 'secretKey', (err, decoded) => {
            if (err) return res.status(403).json({ message: 'Token invalide' });
            req.user = decoded;
            next();
        });
    }
}

module.exports = AuthController;
