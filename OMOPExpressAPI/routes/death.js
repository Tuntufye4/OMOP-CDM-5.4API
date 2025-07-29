const express = require('express');
const router = express.Router();
const controller = require('../controllers/deathController');

router.get('/', controller.getAllDeaths);
router.get('/:id', controller.getDeathByPersonId);

module.exports = router;
     