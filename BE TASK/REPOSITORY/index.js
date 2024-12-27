const Bank = require("../MODALS/bank");
const Company = require("../MODALS/Company");
const CompanyAddress = require("../MODALS/companyAddress");
const CryptoDetails = require("../MODALS/cryptoDetails");
const Hair = require("../MODALS/hair");
const UserAddress = require("../MODALS/userAddress");
const User = require("../MODALS/users");

require('./../CONFIG/SEQUELIZE/associations');

/*
 * @param {, condition, } string,object,string,string
 * @return{result,null} object,null
 * @desc  get all user data based on condition from db, will return all data if condition not specified
 */
const getAllUserDataByCondition = async (
    condition,
) => {
    try {
        const result = await User.findAndCountAll({
            where: { ...condition },
            include: [
                {
                    model: UserAddress,
                    required: false
                },
                {
                    model: Hair,
                    required: false
                },
                {
                    model: Bank,
                    required: false
                },
                {
                    model: Company,
                    required: false,
                    include: [
                        {
                            model: CompanyAddress,
                            required: false
                        }
                    ]
                },
                {
                    model: CryptoDetails,
                    required: false
                }
            ],
        });
        return { status: !!result, data: result || null };
    } catch (error) {
        console.error("Error fetching data:", error);
        return { status: false, data: null };
    }
};

module.exports = { getAllUserDataByCondition };

