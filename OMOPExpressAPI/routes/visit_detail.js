const express = require('express');
const router = express.Router();
const controller = require('../controllers/visitDetailController');

router.get('/', controller.getAllVisitDetails);
router.get('/:id', controller.getVisitDetailById);

module.exports = router;
