const express = require('express');
const router = express.Router();
const controller = require('../controllers/cdmSourceController');

router.get('/', controller.getAllSources);
router.get('/:id', controller.getSourceByName);

module.exports = router;
  