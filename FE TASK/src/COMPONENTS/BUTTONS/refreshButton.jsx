import React from "react";
import { Button } from "@chakra-ui/react";

const RefreshButton = ({ onClick }) => {
    return (
        <Button colorScheme="blue" onClick={onClick}>
            Refresh List
        </Button>
    );
};

export default RefreshButton;
