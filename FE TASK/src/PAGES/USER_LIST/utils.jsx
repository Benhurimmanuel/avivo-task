import React from "react";
import { Button, Input, HStack } from "@chakra-ui/react";
import { FaPlus } from "react-icons/fa";
import styles from "./searchAndButtons.module.css";

const SearchAndButtons = ({ searchTerm, onSearchChange, onAddUser, onRefresh }) => {
    return (
        <HStack className={styles.buttonsContainer}>
            <Input
                className={styles.searchBox}
                placeholder="Search by name, company, role or country"
                value={searchTerm}
                onChange={onSearchChange}
            />
            <Button className={styles.addUserBtn} leftIcon={<FaPlus />} onClick={onAddUser}>
                Add User
            </Button>
            <Button className={styles.refreshBtn} onClick={onRefresh}>
                Refresh User List
            </Button>
        </HStack>
    );
};

export default SearchAndButtons;
