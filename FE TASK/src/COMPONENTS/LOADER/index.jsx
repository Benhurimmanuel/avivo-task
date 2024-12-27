import { Box, Spinner } from "@chakra-ui/react";

const LoadingSpinner = () => {
    return (
        <Box textAlign="center" my={4}>
            <Spinner size="xl" />
        </Box>
    );
};

export default LoadingSpinner;
