const express = require('express');
const router = express.Router();
const controller = require('../controllers/payerPlanPeriodController');

router.get('/', controller.getAllPayerPlans);
router.get('/:id', controller.getPayerPlanById);

module.exports = router;
