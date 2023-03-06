import React, { useState } from 'react'
import { Form, Button } from 'react-bootstrap'
import axios from 'axios'

function Addmulter() {
  const [name, setName] = useState('')
  const [email, setEmail] = useState('')
  const [password, setPassword] = useState('')
  const [image, setImage] = useState('')

  const imageUpload = (e) => {
    setImage(e.target.files[0])
  }

  const submitData = async (e) => {
    e.preventDefault()
    const formData = new FormData()
    formData.append('name', name)
    formData.append('email', email)
    formData.append('password', password)
    formData.append('image', image)

    const config = {
      "Content-Type": "multipart/form-data"
    }
    let apiData = await axios.post('http://localhost:3233/api/postdata', formData, config)
    console.log(apiData, 'response')
  }
  return (
    <div className='container m-5 p-5' style={{ border: "2px solid black", borderRadius: "20px" }} >

      <h4>Add your details</h4>
      <Form className='container w-50' onSubmit={submitData}>
        <Form.Group className="mb-3" controlId="formBasicName">
          <Form.Label>Name</Form.Label>
          <Form.Control type="text" placeholder="Enter name" value={name} onChange={(e) => setName(e.target.value)} />
        </Form.Group>

        <Form.Group className="mb-3" controlId="formBasicEmail">
          <Form.Label>Email address</Form.Label>
          <Form.Control type="email" placeholder="Enter email" value={email} onChange={(e) => setEmail(e.target.value)} />
        </Form.Group>

        <Form.Group className="mb-3" controlId="formBasicPassword">
          <Form.Label>Password</Form.Label>
          <Form.Control type="password" placeholder="Password" value={password} onChange={(e) => setPassword(e.target.value)} />
        </Form.Group>

        <Form.Group className="mb-3" controlId="formBasicPhoto">
          <Form.Label>Image</Form.Label>
          <Form.Control type="file" placeholder="Enter image" onChange={imageUpload} />
        </Form.Group>

        <Button variant="primary" type="submit">
          Submit
        </Button>
      </Form>
    </div>
  )
}

export default Addmulter
