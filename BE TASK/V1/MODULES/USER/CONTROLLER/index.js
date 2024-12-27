const { getAllUsersService } = require("./../SERVICE");

const getAllUsersController = async (req, res, next) => {
    try {
        const result = await getAllUsersService();
        const { statusCode, responsePayload } = result;
        res.status(statusCode).send({ responsePayload });
    } catch (error) {
        next(error);
    }
};

module.exports = { getAllUsersController }; 
