const express = require('express');
const router = express.Router();
const controller = require('../controllers/visitOccurrenceController');

router.get('/', controller.getAllVisits);
router.get('/:id', controller.getVisitById);

module.exports = router;
