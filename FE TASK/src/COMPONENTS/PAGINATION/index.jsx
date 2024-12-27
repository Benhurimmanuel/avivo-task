import React from "react";
import { Button, HStack } from "@chakra-ui/react";
import styles from "./pagination.module.css";

const Pagination = ({ currentPage, totalPages, onPageChange }) => {
    return (
        <HStack className={styles.paginationControls}>
            <Button
                onClick={() => onPageChange(currentPage - 1)}
                isDisabled={currentPage === 1}
            >
                Previous
            </Button>

            {/* Render Page Numbers */}
            {Array.from({ length: totalPages }, (_, index) => index + 1).map((pageNumber) => (
                <Button
                    key={pageNumber}
                    onClick={() => onPageChange(pageNumber)}
                    className={pageNumber === currentPage ? styles.solid : ""}
                >
                    {pageNumber}
                </Button>
            ))}

            <Button
                onClick={() => onPageChange(currentPage + 1)}
                isDisabled={currentPage === totalPages}
            >
                Next
            </Button>
        </HStack>
    );
};

export default Pagination;
