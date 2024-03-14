const express =  require('express')
const router =  express.Router()

const formController = require("../controller/formController");

router.post('/submit-form/sign', formController.signForm)
router.post('/submit-form/connect', formController.submitForm)

module .exports = router;