const express = require('express')
const router = express.Router()
const controllerSocial = require('../controller/socialController')
const userController = require("../controller/aunthentificationController");

router.post('/publier', controllerSocial.publish)
router.post('/like', controllerSocial.like)
router.post('/comment', controllerSocial.comment)
router.post('/delete', controllerSocial.delete)
router.get('/social',  controllerSocial.show)
router.post('/social-com', controllerSocial.show_comment)
router.post('/count', controllerSocial.count_like)

module.exports = router;