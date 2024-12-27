const { DataTypes } = require('sequelize');
const sequelize = require('../CONFIG/SEQUELIZE');

const CompanyAddress = sequelize.define('company_address', {
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
    tableName: 'company_address'
});

module.exports = CompanyAddress;