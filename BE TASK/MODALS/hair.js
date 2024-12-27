const sequelize = require("../CONFIG/SEQUELIZE");
const { DataTypes } = require('sequelize');

const Hair = sequelize.define('Hair', {
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
        allowNull: false
    },
    color: DataTypes.STRING,
    type: DataTypes.STRING
});
module.exports = Hair; 
