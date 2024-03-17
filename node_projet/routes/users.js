const express =  require('express')
const router =  express.Router()
const AuthController = require('../controller/aunthentificationController')

router.post('/login', AuthController.login);
router.post('/register', AuthController.register);
router.post('/logout', AuthController.logout);
router.post('/verify', AuthController.verifyToken);
module .exports = router;
