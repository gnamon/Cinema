var express = require("express");
var router = express.Router();
const connection = require("../../connection/connection");

router.get('/theaterform', function (req, res) {
    res.render("admin/theaterform");
    })

module.exports = router;

