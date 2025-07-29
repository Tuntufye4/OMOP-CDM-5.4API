const express = require('express');
const router = express.Router();
const controller = require('../controllers/conditionOccurrenceController');

router.get('/', controller.getAllConditions);
router.get('/:id', controller.getConditionById);

module.exports = router;
