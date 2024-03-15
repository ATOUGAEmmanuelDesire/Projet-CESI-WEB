const express =  require('express')
const router =  express.Router()
const AuthController = require('../controller/aunthentificationController')
const formController = require('../controller/formController')

router.post('/submit-form/sign', formController.signForm)
router.post('/submit-form/connect', formController.submitForm)
router.post('/login', AuthController.login);
router.post('/register', AuthController.register);
module .exports = router;