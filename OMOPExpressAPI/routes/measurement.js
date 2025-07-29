const express = require('express');
const router = express.Router();
const controller = require('../controllers/measurementController');

router.get('/', controller.getAllMeasurements);
router.get('/:id', controller.getMeasurementById);

module.exports = router;
