var express = require("express");
var router = express.Router();
const connection = require("../../connection/connection");

router.get('/adminaddbranch', function (req, res) {
    res.render("admin/adminaddbranch");
    })

module.exports = router;
