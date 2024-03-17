const express = require('express')
const router = express.Router();
const controllerEvents = require('../controller/eventsController')
const userController = require("../controller/aunthentificationController");

router.post('/addevents', controllerEvents.addEvents)
router.get('/events', controllerEvents.listEvents)
router.post('/validate', controllerEvents.valideEvents)
router.post('/delete', controllerEvents.deleteEvents)

module.exports =  router