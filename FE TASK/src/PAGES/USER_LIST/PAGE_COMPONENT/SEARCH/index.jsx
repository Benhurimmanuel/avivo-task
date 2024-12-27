import React from "react";
import { Box, Button, Input, Grid, GridItem, HStack } from "@chakra-ui/react";
import { FaPlus } from "react-icons/fa";
import styles from "./searchSection.module.css";

const SearchAndButtons = ({ searchTerm, onSearchChange, onAddUser, onRefresh }) => {
    return (
        <Grid
            templateColumns={{ base: "1fr", sm: "1fr", md: "3fr 1fr 1fr" }}
            gap={4}
            width="100%"
        >
            {/* Search box */}
            <GridItem colSpan={{ base: 1, sm: 1, md: 1 }}>
                <Input
                    className={styles.searchBox}
                    placeholder="Search by name, company, role or country"
                    value={searchTerm}
                    onChange={onSearchChange}
                />
            </GridItem>

            {/* Buttons container (HStack for horizontal alignment) */}
            <GridItem colSpan={{ base: 1, sm: 1, md: 2 }} display="flex" justifyContent="space-between">
                <HStack spacing={4} width="100%" justify="flex-start">
                    <Button
                        className={styles.addUserBtn}
                        leftIcon={<FaPlus />}
                        onClick={onAddUser}
                        width="auto"
                    >
                        Add User
                    </Button>
                    <Button
                        className={styles.refreshBtn}
                        onClick={onRefresh}
                        width="auto"
                    >
                        Refresh </Button>
                </HStack>
            </GridItem>
        </Grid>
    );
};

export default SearchAndButtons;
