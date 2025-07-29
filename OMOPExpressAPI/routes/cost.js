const express = require('express');
const router = express.Router();
const controller = require('../controllers/costController');

router.get('/', controller.getAllCosts);
router.get('/:id', controller.getCostById);

module.exports = router;
