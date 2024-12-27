const handleApiResponse = (statusCode, payload) => ({
    status: statusCode === 200 || statusCode === 201,
    statusCode,
    message: payload.message || 'Request was successful.',
    responsePayload: payload,
});


module.exports = { handleApiResponse };
