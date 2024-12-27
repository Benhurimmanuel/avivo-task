import React, { useState, useEffect } from "react";
import { Box, Text, Spinner } from "@chakra-ui/react";
import UserTable from './../../COMPONENTS/TABLES/USER_TABLE';
import SearchAndButtons from "./PAGE_COMPONENT/SEARCH";
import Pagination from "../../COMPONENTS/PAGINATION";
import styles from './userList.module.css';

const UserList = () => {
    const [users, setUsers] = useState([]);
    const [filteredUsers, setFilteredUsers] = useState([]);
    const [loading, setLoading] = useState(false);
    const [error, setError] = useState(null);
    const [searchTerm, setSearchTerm] = useState("");
    const [currentPage, setCurrentPage] = useState(1);
    const [usersPerPage] = useState(5);

    const fetchUsers = async () => {
        setLoading(true);
        setError(null);
        try {
            const response = await fetch("https://dummyjson.com/users");
            if (!response.ok) {
                throw new Error("Failed to fetch users");
            }
            const data = await response.json();
            setUsers(data.users);
            setFilteredUsers(data.users);
        } catch (error) {
            setError(error.message);
        } finally {
            setLoading(false);
        }
    };

    const handleSearchChange = (e) => {
        const value = e.target.value.toLowerCase();
        setSearchTerm(value);

        const filtered = users.filter((user) => {
            return (
                user.firstName.toLowerCase().includes(value) ||
                user.lastName.toLowerCase().includes(value) ||
                user.company.name.toLowerCase().includes(value) ||
                user.role.toLowerCase().includes(value) ||
                user.address.country.toLowerCase().includes(value)
            );
        });

        setFilteredUsers(filtered);
        setCurrentPage(1);
    };

    const handlePageChange = (pageNumber) => {
        setCurrentPage(pageNumber);
    };

    const indexOfLastUser = currentPage * usersPerPage;
    const indexOfFirstUser = indexOfLastUser - usersPerPage;
    const currentUsers = filteredUsers.slice(indexOfFirstUser, indexOfLastUser);

    useEffect(() => {
        fetchUsers();
    }, []);

    return (
        <Box p={4} className={styles.userListContainer}>
            <SearchAndButtons
                searchTerm={searchTerm}
                onSearchChange={handleSearchChange}
            />

            {loading && (
                <Box className={styles.spinnerContainer}>
                    <Spinner size="xl" />
                </Box>
            )}

            {error && (
                <Text textAlign="center" color="red.500" fontSize="xl" className={styles.noUsersText}>
                    Error: {error}
                </Text>
            )}

            {!loading && !error && filteredUsers.length === 0 && (
                <Text textAlign="center" color="red.500" fontSize="xl" className={styles.noUsersText}>
                    No users found.
                </Text>
            )}

            {!loading && !error && filteredUsers.length > 0 && (
                <>
                    <div className={styles.userTable}>
                        <UserTable users={currentUsers} />
                    </div>
                    <div className={styles.paginationContainer}>
                        <Pagination
                            currentPage={currentPage}
                            totalPages={Math.ceil(filteredUsers.length / usersPerPage)}
                            onPageChange={handlePageChange}
                        />
                    </div>
                </>
            )}
        </Box>
    );
};

export default UserList;
