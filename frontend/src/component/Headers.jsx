import React from 'react'
import Container from 'react-bootstrap/Container';
import Navbar from 'react-bootstrap/Navbar';

function Headers() {
  return (
    <Navbar bg="dark" expand="lg" >
      <Container>
        <Navbar.Brand href="#home" style={{ color: "white", textAlign: 'right' }}><h4>ULIS TCP</h4></Navbar.Brand>
      </Container>
    </Navbar>
  )
}

export default Headers
