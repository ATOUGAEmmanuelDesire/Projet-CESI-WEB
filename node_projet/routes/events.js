const express = require('express')
const router = express.Router();
const controllerEvents = require('../controller/eventsController')
const controllerUser = require('../controller/aunthentificationController')


router.post('/addevents', controllerEvents.add)
router.get('/events',controllerEvents.listEvents)
router.post('/validate', controllerEvents.valideEvents)
router.delete('/delete', controllerEvents.deleteEvents)
router.get('/ideas', controllerEvents.renderEventsI)
router.get('/past', controllerEvents.renderPastEvents)
router.get('/addIdea', controllerEvents.renderAddIdea)

module.exports =  router