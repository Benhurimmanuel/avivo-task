

const { getAllUserDataByCondition } = require('../../../../REPOSITORY');
const { SUCCESS, UNSUCCESSFUL_MESSAGE, INTERNAL_SERVER_ERROR } = require('../../../CONSTANTS/HTTP_MESSAGES');
const { handleApiResponse } = require('../../../UTILS/API_RESPONSE');

const getAllUsersService = async () => {
    try {
        const responsePayload = await getAllUserDataByCondition(null,);
        if (responsePayload.status) {
            return handleApiResponse(200, {
                payload: {
                    count: responsePayload.data.count,
                    rows: responsePayload.data.rows,
                    message: SUCCESS
                },
            });
        }
        return handleApiResponse(400, {
            message: UNSUCCESSFUL_MESSAGE,
        });
    } catch (error) {
        return handleApiResponse(500, {
            message: INTERNAL_SERVER_ERROR,
        });
    }
};

module.exports = { getAllUsersService };
