const express = require('express');
const router = express.Router();
const controller = require('../controllers/providerController');

router.get('/', controller.getAllProviders);
router.get('/:id', controller.getProviderById);

module.exports = router;
