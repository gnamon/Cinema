var express = require("express");
var router = express.Router();
const connection = require("../connection/connection");

router.get('/cinema', function (req, res) {
    var get_branch = 'SELECT * FROM branch';
    connection.query(get_branch, function(err, branchResult) {
        if (err) throw err;
        else {
            res.render("cinema", {branchData:branchResult});
        }
    })
 })

module.exports = router;