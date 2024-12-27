import React from "react";
import { Container, Flex } from "@chakra-ui/react";
import UserList from "./PAGES/USER_LIST";
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';

const App = () => {
  return (
    <Router>
      <Container>
        <Flex direction="column">
          <Routes>
            <Route path="/" element={<UserList />} />
          </Routes>
        </Flex>
      </Container>
    </Router>
  );
};

export default App;
