import React from "react";
import { Table, Thead, Tbody, Tr, Th, Td, Button } from "@chakra-ui/react";
import { FaTrash } from "react-icons/fa";
import styles from './userTable.module.css';

const UserTable = ({ users, onDeleteUser }) => {
    return (
        <div className={styles.tableContainer}>
            <Table variant="striped" colorScheme="teal">
                <Thead>
                    <Tr>
                        <Th width="20%">Name</Th>
                        <Th width="20%">Company</Th>
                        <Th width="20%">Role</Th>
                        <Th width="20%">Country</Th>
                        <Th width="20%">Actions</Th>
                    </Tr>
                </Thead>
                <Tbody>
                    {users.map((user) => (
                        <Tr key={user.id} className={styles.tableRow}>
                            <Td>{user.firstName} {user.lastName}</Td>
                            <Td>{user.company.name}</Td>
                            <Td>{user.role}</Td>
                            <Td>{user.address.country}</Td>
                            <Td>
                                <Button
                                    className={styles.deleteButton}
                                    onClick={() => onDeleteUser(user.id)}
                                    leftIcon={<FaTrash />}
                                >
                                    Delete
                                </Button>
                            </Td>
                        </Tr>
                    ))}
                </Tbody>
            </Table>
        </div>
    );
};

export default UserTable;
