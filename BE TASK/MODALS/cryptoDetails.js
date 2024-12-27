const sequelize = require("../CONFIG/SEQUELIZE"); const { DataTypes } = require('sequelize');


const CryptoDetails = sequelize.define('crypto_details', {
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
        allowNull: false
    },
    coin: DataTypes.STRING,
    wallet: DataTypes.STRING,
    network: DataTypes.STRING
}, {
    tableName: 'crypto_details'
});

module.exports = CryptoDetails; 
