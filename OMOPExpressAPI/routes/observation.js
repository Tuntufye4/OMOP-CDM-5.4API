const express = require('express');
const router = express.Router();
const controller = require('../controllers/observationController');

router.get('/', controller.getAllObservations);
router.get('/:id', controller.getObservationById);

module.exports = router;
