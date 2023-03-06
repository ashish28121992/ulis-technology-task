
import { Routes, Route } from 'react-router-dom';
import React from "react"

import './App.css';
import Headers from './component/Headers';
import Sidebar from './component/Sidebar';
import Printstar from './component/Printstar';
import Addmulter from './component/Addmulter';
import Fileload from './component/Fileload';
import QrCode from './component/QrCode';
import Ocr from './component/Ocr';
import Row from 'react-bootstrap/Row';
import Col from 'react-bootstrap/Col';
import Hindi from './component/Hindi';
import English from './component/English';

function App() {


  return (
    <div  >
      <Headers />
      <div className='container m-2 p-2'>
        <Row>
          <Col col-4 sm={4}> <Sidebar /></Col>
          <Col col-8 sm={8}>
            <Routes>
            <Route path="/header" element={<Headers />} />
            <Route path="/sidebar" element={<Sidebar />} />
            <Route path="/printstart" element={<Printstar />} />
            <Route path="/addmulter" element={<Addmulter />} />
            <Route path="/viewfile" element={<Fileload />} />
            <Route path="/qrcode" element={<QrCode />} />
            <Route path="/ocr" element={<Ocr />} />
            <Route path="/hjson" element={<Hindi />} />
            <Route path="/ejson" element={<English />} />
          </Routes></Col>
        </Row>
      </div>



    </div>
  );
}

export default App;
