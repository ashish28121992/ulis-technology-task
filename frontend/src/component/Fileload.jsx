
import React, { useState, useEffect } from 'react'
import { Table } from 'react-bootstrap'
import axios from 'axios'

function Fileload() {
    const [data, setData] = useState([])

    const userDetails = async () => {
        const apiData = await axios.get('http://localhost:3233/api/getinfo')
        setData(apiData.data.response)
    }

    useEffect(() => {
        userDetails()
    }, [])

    return (
        <div className='container m-4 p-2'>
            <h4 style={{ textAlign: 'center' }}> View Item</h4>
            <Table className='container w-75' striped bordered hover>
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Image</th>
                    </tr>
                </thead>
                <tbody>
                    {
                        data.map((item, index) => {
                            return <tr key={index}>
                                <td>{item.name}</td>
                                <td>{item.email}</td>
                                <td>
                                    <img width={100} height={100} src={`http://localhost:3233/${item.image}`} alt='logo' />
                                </td>
                            </tr>
                        })
                    }
                </tbody>
            </Table>
        </div>
    )
}

export default Fileload
