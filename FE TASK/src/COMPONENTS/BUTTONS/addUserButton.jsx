import React from "react";
import { Button } from "@chakra-ui/react";
import { FaPlus } from "react-icons/fa";

const AddUserButton = ({ setUsers, setFilteredUsers }) => {
    const handleAddUser = () => {
        const newUser = {
            id: Date.now(),
            name: "John Doe",
            company: { name: "Company X" },
            role: "Developer",
            country: "USA",
        };
        setUsers((prevUsers) => [...prevUsers, newUser]);
        setFilteredUsers((prevUsers) => [...prevUsers, newUser]);
    };

    return (
        <Button leftIcon={<FaPlus />} colorScheme="teal" onClick={handleAddUser}>
            Add User
        </Button>
    );
};

export default AddUserButton;
