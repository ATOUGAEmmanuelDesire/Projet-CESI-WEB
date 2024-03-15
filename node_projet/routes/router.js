const express = require('express')
const router =  express.Router();

const notfound = require('../middleware/notfound');

const accueilController = require('../controller/accueilController');
const inscriptionController =  require('../controller/inscriptionController')
const connexionController = require('../controller/connexionController');
const  eventsController = require('../controller/eventsController');

const socialController = require('../controller/socialController');
const boutiqueController = require('../controller/boutiqueController');

router.get('/cesi-bde/boutique', boutiqueController.renderBoutique)
router.get('/cesi-bde/accueil', accueilController.renderAccueil)
router.get('/cesi-bde/inscription', inscriptionController.renderInscription)
router.get('/cesi-bde/connexion', connexionController.renderConnexion)

router.get('/cesi-bde/events', eventsController.renderEvents)
router.get('/cesi-bde/social', socialController.renderSocial)

router.use(notfound)
module.exports = router;