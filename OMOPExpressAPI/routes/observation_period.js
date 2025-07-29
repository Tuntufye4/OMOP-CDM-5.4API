const express = require('express');
const router = express.Router();
const controller = require('../controllers/observationPeriodController');

router.get('/', controller.getAllObservationPeriods);
router.get('/:id', controller.getObservationPeriodById);

module.exports = router;
  