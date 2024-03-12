const express = require('express')
const router =  express.Router();

const notfound = require('../middleware/notfound')
const adduser = require('../middleware/adduser')
const signIn = require('../middleware/signIn')

const accueilController = require('./accueilController');
const inscriptionController =  require('./inscriptionController')
const connexionController = require('./connexionController');
const  eventsController = require('./eventsController');
const boutiqueController = require('./boutiqueController');

router.get('/cesi-bde/accueil', accueilController.renderAccueil)
router.get('/cesi-bde/inscription', inscriptionController.renderInscription)
router.get('/cesi-bde/connexion', connexionController.renderConnexion)
router.get('/cesi-bde/boutique', boutiqueController.renderBoutique)
router.get('/cesi-bde/events', eventsController.renderEvents)
router.use(notfound);

router.post('/cesi-bde/submit-form/adduser', adduser, (req, res) => {
    // if (req.body.boutonSendNewUser === 'true') {
    //     adduser(req, res, next)
    //     res.redirect('/cesi-bde/accueil')
    // }else{
    //     res.redirect('/cesi-bde/inscription')
    // }
    res.redirect('/cesi-bde/accueil')
})
router.post('/cesi-bde/submit-form/sign-in', signIn, (req, res, next)=>{
    for(const element of rows){
        if (name===element['Name'] && surname===element['Surname'] &&
            email===element['Email_address'] && password===['Password']){

            if (element['Status']===0){
                res.redirect('/cesi-bde/accueil')
            }else if (element['Status']===1){
                res.redirect('/cesi-bde/accueil')
            }else{
                res.redirect('/cesi-bde/accueil')
            }
        }else{
            res.send("<p>Identifiants invalides</p>")
        }
    }
})

module.exports = router;