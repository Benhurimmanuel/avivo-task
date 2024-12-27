const sequelize = require("../SEQUELIZE/index")
const Bank = require("../../MODALS/bank");
const Company = require("../../MODALS/Company");
const User = require("../../MODALS/users");
const UserAddress = require("../../MODALS/userAddress");
const Hair = require("../../MODALS/hair");
const CompanyAddress = require("../../MODALS/companyAddress");
const CryptoDetails = require("../../MODALS/cryptoDetails");


// Define Associations
User.hasOne(UserAddress, { foreignKey: { name: 'userIdFk', allowNull: false } });
UserAddress.belongsTo(User, { foreignKey: 'userIdFk' });

User.hasOne(Hair, { foreignKey: { name: 'userIdFk', allowNull: false } });
Hair.belongsTo(User, { foreignKey: 'userIdFk' });

User.hasOne(Bank, { foreignKey: { name: 'userIdFk', allowNull: false } });
Bank.belongsTo(User, { foreignKey: 'userIdFk' });

User.hasOne(Company, { foreignKey: { name: 'userIdFk', allowNull: false } });
Company.belongsTo(User, { foreignKey: 'userIdFk' });

Company.hasOne(CompanyAddress, { foreignKey: { name: 'companyIdFk', allowNull: false } });
CompanyAddress.belongsTo(Company, { foreignKey: 'companyIdFk' });

User.hasOne(CryptoDetails, { foreignKey: { name: 'userIdFk', allowNull: false } });
CryptoDetails.belongsTo(User, { foreignKey: 'userIdFk' });

