// SearchBox.js
import React from "react";
import { Input } from "@chakra-ui/react";
import { FaSearch } from "react-icons/fa";
import styles from "./searchBox.module.css"; // Assuming you have a separate CSS file for the search box styles

const SearchBox = ({ value, onChange }) => {
    return (
        <Input
            className={styles.searchBox}
            placeholder="Search by name, company, role or country"
            value={value}
            onChange={onChange}
            leftIcon={<FaSearch />}
        />
    );
};

export default SearchBox;
