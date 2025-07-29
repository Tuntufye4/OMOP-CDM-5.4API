const express = require('express');
const router = express.Router();
const controller = require('../controllers/noteNlpController');

router.get('/', controller.getAllNoteNlp);
router.get('/:id', controller.getNoteNlpById);

module.exports = router;
