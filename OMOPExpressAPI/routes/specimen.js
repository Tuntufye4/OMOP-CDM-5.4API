const express = require('express');
const router = express.Router();
const controller = require('../controllers/specimenController');

router.get('/', controller.getAllSpecimens);
router.get('/:id', controller.getSpecimenById);

module.exports = router;
          