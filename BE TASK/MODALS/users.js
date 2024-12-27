const sequelize = require("../CONFIG/SEQUELIZE");
const { DataTypes } = require('sequelize');


const User = sequelize.define('User', {
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
        allowNull: false
    },
    firstName: {
        type: DataTypes.STRING,
        allowNull: false
    },
    lastName: {
        type: DataTypes.STRING,
        allowNull: false
    },
    maidenName: DataTypes.STRING,
    age: DataTypes.INTEGER,
    gender: {
        type: DataTypes.ENUM('male', 'female'),
        allowNull: false
    },
    email: {
        type: DataTypes.STRING,
        allowNull: false,
        unique: true
    },
    phone: DataTypes.STRING,
    userName: {
        type: DataTypes.STRING,
        allowNull: false,
        unique: true
    },
    password: DataTypes.STRING,
    birthDate: DataTypes.DATE,
    image: DataTypes.STRING,
    bloodGroup: DataTypes.STRING(5),
    height: DataTypes.DECIMAL(10, 2),
    weight: DataTypes.DECIMAL(10, 2),
    eyeColor: DataTypes.STRING,
    ip: DataTypes.STRING,
    macAddress: DataTypes.STRING,
    university: DataTypes.STRING,
    ein: DataTypes.STRING,
    ssn: DataTypes.STRING,
    userAgent: DataTypes.STRING,
    role: DataTypes.STRING,
});
module.exports = User;
