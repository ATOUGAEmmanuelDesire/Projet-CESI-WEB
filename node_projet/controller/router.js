const express = require('express')
const router =  express.Router();

const notfound = require('../middleware/notfound')
const formController = require('../controller/formController')

const accueilController = require('./accueilController');
const inscriptionController =  require('./inscriptionController')
const connexionController = require('./connexionController');
const  eventsController = require('./eventsController');
const boutiqueController = require('./boutiqueController');


router.post('/submit-form/connect', formController.submitForm)
router.get('/cesi-bde/accueil', accueilController.renderAccueil)
router.get('/cesi-bde/inscription', inscriptionController.renderInscription)
router.get('/cesi-bde/connexion', connexionController.renderConnexion)
router.get('/cesi-bde/boutique', boutiqueController.renderBoutique)
router.get('/cesi-bde/events', eventsController.renderEvents)
router.use(notfound);

// router.post('/submit-form/sign', formController.signForm)
module.exports = router;