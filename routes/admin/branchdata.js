var express = require("express");
var router = express.Router();
const connection = require("../../connection/connection");

router.get('/branchdata', function (req, res) {
    var get_branch = 'SELECT * FROM branch';
    connection.query(get_branch,function(err,rs) {
        if (err) throw err;
        else {
            res.render("admin/branchdata", { title: 'Branch Form', branchData:rs });
        }
    });
});

router.get('/branchform', function (req, res) {
    var get_branch = 'SELECT * FROM branch';
    connection.query(get_branch,function(err,branchData) {
        if (err) throw err;
        else {
            res.render("admin/adminaddbranch", {branch:branchData, data:{} ,success:0 });
        }
    });
});
router.post("/branchform",function (req,res) {
    var branchName = req.body.branchName;
    var branchAddress = req.body.branchAddress;
    var phoneNo = req.body.phoneNo;
    var logo = req.body.logo;

    var sql = "INSERT INTO branch (branchName,branchAddress,phoneNo,logo) VALUES ('"+branchName+"', '"+branchAddress+"', '"+phoneNo+"','"+logo+"')";
    connection.query(sql, function(err,result) {
        if (err) throw err;
        else {
            
            console.log(branchName + " is successfully inserted");
            res.redirect("/branchdata");
        }
    });
});

router.get('/deletebranch', function(req,res,next) {
    connection.query('DELETE FROM branch WHERE branchID = ?', req.query.id, function(err,rs) {
        res.redirect("/branchdata");
    })
});

router.get('/editbranch', function(req,res,next) {
    connection.query('SELECT * FROM branch WHERE branchID = ?', req.query.id, function(err,rs) {
    res.render('admin/adminaddbranch', {data: rs[0]});
    })
});

router.post('/editbranch', function(req,res,next) {
    var param = [
        req.body,
        req.query.id
    ]
    connection.query('UPDATE branch SET ? WHERE branchID = ?', param,function (err, rs) {
        res.redirect('/branchdata');
    })
})
module.exports = router;