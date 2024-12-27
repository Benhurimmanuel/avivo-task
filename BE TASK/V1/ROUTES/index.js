
const express = require('express');

const router = express.Router();

const userRoutes = require("./userRoutes")

router.use('/users', userRoutes);
router.get('/ping', (req, res) => { res.send("pong") });

module.exports = router;
