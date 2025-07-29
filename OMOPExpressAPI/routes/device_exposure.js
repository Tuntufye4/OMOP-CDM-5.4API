const express = require('express');
const router = express.Router();
const controller = require('../controllers/deviceExposureController');

router.get('/', controller.getAllDevices);
router.get('/:id', controller.getDeviceById);

module.exports = router;
