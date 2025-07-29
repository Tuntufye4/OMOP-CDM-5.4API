const express = require('express');
const router = express.Router();
const controller = require('../controllers/episodeEventController');

router.get('/', controller.getAllEpisodeEvents);
router.get('/:id', controller.getEpisodeEventById);

module.exports = router;
