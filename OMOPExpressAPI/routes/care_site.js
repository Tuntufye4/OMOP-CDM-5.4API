const express = require('express');
const router = express.Router();
const controller = require('../controllers/careSiteController');

router.get('/', controller.getAllCareSites);
router.get('/:id', controller.getCareSiteById);

module.exports = router;  
