import React from 'react'
import { Link } from 'react-router-dom'

function Sidebar() {
  return (
    <div className='container m-1 p-1' style={{ maxHeight: "100vh", backgroundColor: "lightgray" }} >
      <ul>
        <li><Link to="/qrcode">QrCode</Link></li>
        <li><Link to="/printstart">PrintStar Pattern</Link></li>
        <li><Link to="/ocr">OCR</Link> </li>
        <li><Link to="/hjson">Hindi JSON Data</Link> </li>
        <li><Link to="/ejson">English JSON Data</Link> </li>
        <li>File upload</li>
        <ul>
          <li><Link to="/addmulter">Add Item</Link> </li>
          <li><Link to="/viewfile">View Item</Link> </li>
        </ul>
      </ul>
    </div>
  )
}

export default Sidebar
