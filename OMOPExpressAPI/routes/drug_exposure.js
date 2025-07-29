const express = require('express');
const router = express.Router();
const controller = require('../controllers/drugExposureController');

router.get('/', controller.getAllDrugExposures);
router.get('/:id', controller.getDrugExposureById);

module.exports = router;
