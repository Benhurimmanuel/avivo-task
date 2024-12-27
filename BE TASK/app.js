const express = require('express');
const path = require('path');
require('./CONFIG/SEQUELIZE');
const cors = require('cors');
const { errorHandler } = require('./V1/UTILS/ERROR_HANDLERS/generalErrors');
require('dotenv').config();
const v1Routes = require("./V1/ROUTES/index")
const app = express();

const corsOptions = {
    origin: '*',
    methods: ['GET', 'POST', 'PUT', 'DELETE'],
    allowedHeaders: ['Content-Type', 'Authorization'],
};

app.use(cors(corsOptions));

// Middlewares
app.use(express.json());

// Serve React build
// const buildPath = path.join(__dirname, 'FE', 'dist');
// app.use(express.static(buildPath));

// API Routes
app.use('/api/v1', v1Routes);

// app.get('/', (req, res) => {
//     res.sendFile(path.join(buildPath, 'index.html'));
// });

// Ping Route
app.use('/api/ping', (req, res) => {
    res.send('pong');
});

app.use(errorHandler);

// Start Server
app.listen(process.env.SERVER_PORT, () => {
    console.info(`App running on port ${process.env.SERVER_PORT}`);
});
