var express = require("express");
var router = express.Router();
const connection = require("../../connection/connection");

router.get('/theaterdata', function (req, res) {
    var getThearter = 'SELECT b.branchName, tt.theaterTypeName, t.* FROM branch b, theater t, theatertype tt WHERE t.branchID = b.branchID AND t.theaterTypeID = tt.theaterTypeID ORDER BY b.branchID';
    connection.query(getThearter, function(err, rs) {
        if (err) throw err;
        else {
            res.render("admin/theaterdata", {theaterData:rs});
        }
    })
})
router.get('/form', function (req,res,next) {
    var get_branch = "SELECT * FROM branch";
    connection.query(get_branch, function (err, rsBranch) {
        if (err) {
            throw err;
        } else {
            var get_theatertypes = "SELECT * FROM theatertype"
            connection.query(get_theatertypes, function (err, rsType) {
                if (err) {
                    throw err;
                } else {
                    res.render("admin/theaterform", {bData:rsBranch,tData:rsType,data: {}, success:0});      
                }
            })
        }
    })
});

router.post('/form', function (req,res,next) {
    connection.query('INSERT INTO theater SET ?', req.body,function (err,rs) {
        res.send('Insert Success');
    })
})

router.get('/deletetheater', function(req,res,next) {
    connection.query('DELETE FROM theater WHERE theaterID = ?', req.query.id, function(err,rs) {
        res.redirect("/theaterdata");
    })
});

router.get('/edittheater', function(req,res,next) {
    var get_branch = "SELECT * FROM branch";
    connection.query(get_branch, function (err, rsBranch) {
        if (err) {
            throw err;
        } else {
            var get_theatertypes = "SELECT * FROM theatertype";
            connection.query(get_theatertypes, function (err, rsType) {
                if (err) throw err;
                connection.query('SELECT * FROM theater WHERE theaterID = ?', req.query.id, function(err,rs) {
                res.render('admin/theaterform', { bData:rsBranch, tData:rsType, data: rs[0]});
                })      
            })
        }
    })
});

router.post('/edittheater', function(req,res,next) {
    var param = [
        req.body,
        req.query.id
    ]
    connection.query('UPDATE theater SET ? WHERE theaterID = ?', param,function (err, rs) {
        res.redirect('/theaterdata')
    })
})

module.exports = router;