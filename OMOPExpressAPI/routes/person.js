const express = require('express');
const router = express.Router();
const controller = require('../controllers/personController');

router.get('/', controller.getAllPersons);
router.get('/:id', controller.getPersonById);

module.exports = router;
