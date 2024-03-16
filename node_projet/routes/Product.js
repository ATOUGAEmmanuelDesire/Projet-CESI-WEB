const express = require('express')
const router =  express.Router()
const produitcontroller =  require('../controller/produitController')

router.post('/add', produitcontroller.Product)
router.post('/modify', produitcontroller.updateProduct)
router.post('/erase', produitcontroller.eraseProduct)

module.exports = router