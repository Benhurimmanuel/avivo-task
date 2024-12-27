const express = require('express');
const { getAllUsersController } = require('../MODULES/USER/CONTROLLER');

const router = express.Router();

router.route('/list/allusers').get(getAllUsersController);



module.exports = router;
