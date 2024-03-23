const express = require('express')
const router =  express.Router();

const notfound = require('../middleware/notfound');

const accueilController = require('../controller/accueilController');
const inscriptionController =  require('../controller/inscriptionController')
const connexionController = require('../controller/connexionController');
const controllerAdmin = require('../controller/controllerAdmin')
const boutiqueController = require('../controller/boutiqueController');
const userController = require("../controller/aunthentificationController");

router.get('/boutique', boutiqueController.renderBoutique, userController.verifyToken)
// router.get('/accueil', userController.verifyToken,accueilController.renderAccueil)
router.get('/accueil',accueilController.renderAccueil)
router.get('/inscription', inscriptionController.renderInscription)
router.get('/connexion', connexionController.renderConnexion)

router.get('/admin', userController.verifyToken, controllerAdmin.renderAdmin)
router.get('/mentions', userController.mentions)
router.get('/pay', userController.pay)
router.use(notfound)
module.exports = router;