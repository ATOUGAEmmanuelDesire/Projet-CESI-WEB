const express = require('express')
const router =  express.Router();
// const db = require('../utils/dbconnector')

const accueilController = require('./accueilController');
const inscriptionController =  require('./inscriptionController')
const connexionController = require('./connexionController');
// const notfoundController = require('./accueilController');
const  eventsController = require('./eventsController');
const boutiqueController = require('./boutiqueController');

router.get('/cesi-bde/accueil', accueilController.renderAccueil)
router.get('/cesi-bde/inscription', inscriptionController.renderInscription)
router.get('/cesi-bde/connexion', connexionController.renderConnexion)
router.get('/cesi-bde/boutique', boutiqueController.renderBoutique)
router.get('/cesi-bde/events', eventsController.renderEvents)
router.get('/', notfound.renderNotfound)

module.exports = router;