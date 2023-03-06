import React from 'react'
import { Container, Card, CardContent, Grid, TextField } from '@material-ui/core'
import { useState } from 'react'
import { Button } from 'react-bootstrap'
import axios from 'axios'

function QrCode() {
  const [url, setUrl] = useState("")
  const [qrImage, setQrImage] = useState("")
  const generateQrcode = (e) => {
    e.preventDefault()
    axios.post("http://localhost:3233/api/scnQrcode", { url: url })
      .then(response => {
        console.log(response.data)
        setQrImage(response.data)
      })
  }
  return (
    <div className='container m-5 p-5'>
      <Container>
        <Card>
          <h2 style={{ margin: "1rem" }} >Generate QRcode</h2>
          <CardContent>
            <Grid item xl={4} lg={4} md={4} sm={5} m={2}>
              <TextField style={{ margin: "1rem" }} label=" Enter text here" onChange={(e) => setUrl(e.target.value)} value={url} />
              <br />
              <Button style={{ margin: "1rem" }} varient="contend" color="primary" onClick={generateQrcode}>Generate QRcode</Button>
              <br />
            </Grid>
            <Grid item xl={4} lg={4} md={4} sm={5} m={2}>
              {
                url.length > 0 && qrImage
                  ?
                  <>
                    <a><img src={qrImage} alt="qrimage" /></a>
                    <p>Scan the QRcode to access Data!</p>
                  </>
                  :
                  null
              }
            </Grid>
          </CardContent>
        </Card>
      </Container>
    </div>
  )
}

export default QrCode
