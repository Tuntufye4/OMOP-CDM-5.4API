const express = require('express');
const router = express.Router();
const controller = require('../controllers/conditionEraController');

router.get('/', controller.getAllConditionEras);
router.get('/:id', controller.getConditionEraById);

module.exports = router;

  
