const express = require("express")
const {scnQrcode}= require("../controller/qrcontroller")
const qrcoderouter = express.Router()

qrcoderouter.post("/scnQrcode",scnQrcode)

module.exports={qrcoderouter}