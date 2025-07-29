const express = require('express');
const router = express.Router();
const controller = require('../controllers/metadataController');

router.get('/', controller.getAllMetadata);
router.get('/:id', controller.getMetadataById);

module.exports = router;
