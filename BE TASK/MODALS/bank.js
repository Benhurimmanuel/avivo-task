const sequelize = require("../CONFIG/SEQUELIZE");
const { DataTypes } = require('sequelize');


const Bank = sequelize.define('Bank', {
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
        allowNull: false
    },
    cardExpire: DataTypes.STRING(5),
    cardNumber: DataTypes.STRING,
    cardType: DataTypes.STRING,
    currency: DataTypes.STRING,
    iban: DataTypes.STRING
});
module.exports = Bank;