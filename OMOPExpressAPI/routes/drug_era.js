const express = require('express');
const router = express.Router();
const controller = require('../controllers/drugEraController');

router.get('/', controller.getAllDrugEras);
router.get('/:id', controller.getDrugEraById);

module.exports = router;
   