const { Sequelize } = require('sequelize');
require('dotenv').config();

const sequelize = new Sequelize(
    process.env.DB_DATABASE_NAME,
    process.env.DB_userName,
    process.env.DB_PASSWORD,
    {
        host: process.env.DB_HOST,
        dialect: 'mysql',
        port: process.env.DB_PORT,
        logging: false,
        timezone: '+05:30',
    },
);

(async () => {
    try {
        await sequelize.authenticate();
        console.info('Database connected successfully');

        // Clean wipe (Drop and recreate tables)
        // await sequelize.sync({ force: true });

        // Sync table and alter the schema
        // await sequelize.sync({ alter: true });

        // Sync table
        await sequelize.sync();
    } catch (error) {
        console.log({ error });
        console.error('Database connection unsuccessful');
    }
})();

module.exports = sequelize;
