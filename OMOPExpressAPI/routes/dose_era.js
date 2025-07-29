const express = require('express');
const router = express.Router();
const controller = require('../controllers/doseEraController');

router.get('/', controller.getAllDoseEras);
router.get('/:id', controller.getDoseEraById);

module.exports = router;
