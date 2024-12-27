const sequelize = require("../CONFIG/SEQUELIZE");
const { DataTypes } = require('sequelize');


const Company = sequelize.define('company', {
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
        allowNull: false
    },
    department: DataTypes.STRING,
    name: DataTypes.STRING,
    title: DataTypes.STRING
});

module.exports = Company;