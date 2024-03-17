const express = require('express')
const router =  express.Router();

const notfound = require('../middleware/notfound');

const accueilController = require('../controller/accueilController');
const inscriptionController =  require('../controller/inscriptionController')
const connexionController = require('../controller/connexionController');
const  eventsController = require('../controller/eventsController');

const socialController = require('../controller/socialController');
const boutiqueController = require('../controller/boutiqueController');

router.get('/boutique', boutiqueController.renderBoutique)
router.get('/accueil', accueilController.renderAccueil)
router.get('/inscription', inscriptionController.renderInscription)
router.get('/connexion', connexionController.renderConnexion)

router.get('/social', socialController.renderSocial)

router.use(notfound)
module.exports = router;