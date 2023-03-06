const { con } = require("../modal/connection")

let getData = async (req, res) => {

    try {
        sqlquerry = "SELECT * FROM multer"
        await con.query(sqlquerry, (err, result) => {
            if (err) {
                return res.send({ status: 400, Response: err.sqlMessage })
            }
            res.send({ status: 200, response: result })
        })
    }
    catch {
        return res.send({ status: 400, Response: err.sqlMessage })
    }
}
const postData = (req, res) => {
    try {
        const data = {
            name: req.body.name,
            email: req.body.email,
            password: req.body.password,
            image: req.file.path
        }
        const sqlQuery = "INSERT INTO multer SET ?"
        con.query(sqlQuery, data, (err, result) => {
            if (err) {
                return res.send({ status: 400, response: err.sqlMessage })
            }
            res.send({ status: 200, response: result })
        })
    }
    catch {
        return res.send({ status: 400, response: err.sqlMessage })
    }
}

module.exports = { getData, postData }