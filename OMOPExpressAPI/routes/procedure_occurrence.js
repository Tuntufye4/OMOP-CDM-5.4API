const express = require('express');
const router = express.Router();
const controller = require('../controllers/procedureOccurrenceController');

router.get('/', controller.getAllProcedures);
router.get('/:id', controller.getProcedureById);

module.exports = router;
