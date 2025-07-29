const express = require('express');
const router = express.Router();
const controller = require('../controllers/noteController');

router.get('/', controller.getAllNotes);
router.get('/:id', controller.getNoteById);

module.exports = router;
