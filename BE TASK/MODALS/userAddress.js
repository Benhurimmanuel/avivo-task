const sequelize = require("../CONFIG/SEQUELIZE");
const { DataTypes } = require('sequelize');


const UserAddress = sequelize.define('user_address', {
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
        allowNull: false
    },
    address: DataTypes.STRING,
    city: DataTypes.STRING,
    state: DataTypes.STRING,
    stateCode: DataTypes.STRING(10),
    postalCode: DataTypes.STRING,
    country: DataTypes.STRING,
    lat: DataTypes.DECIMAL(10, 6),
    lng: DataTypes.DECIMAL(10, 6)
}, {
    tableName: 'user_address'
});

module.exports = UserAddress; 
