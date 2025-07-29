const express = require('express');
const router = express.Router();
const controller = require('../controllers/episodeController');

router.get('/', controller.getAllEpisodes);
router.get('/:id', controller.getEpisodeById);

module.exports = router;
