var express = require("express");
var router = express.Router();
const connection = require("../../connection/connection");
var middleware = require("../../middleware/index");
var {
    isAdmin
} = middleware;

router.get('/adminAnalysis',isAdmin, function (req, res) {
    
    var sql4 = 'SELECT g.genreTypeID, g.genreTypeName, COUNT(m.movieID) AS COUNT FROM moviedata m LEFT JOIN moviegenre g ON g.genreTypeID = m.genreTypeID WHERE (m.ReleaseMonth BETWEEN 4 AND 5) AND (m.ReleaseYear = 2020) GROUP BY m.genreTypeID';
    connection.query(sql4,function (err,analysis4) {
        if (err) throw err;

        var sql5 = 'SELECT m.movieID, m.movieName, COUNT(bm.bookingMovieID) AS COUNT FROM moviedata m, movieshowtime sh, bookingmovie bm WHERE bm.movieShowtimeID = sh.movieShowtimeID AND sh.movieID = m.movieID GROUP BY m.movieID';
        connection.query(sql5,function (err,analysis5) {
            if (err) throw err;

            var sql7 = 'SELECT b.branchID, b.branchName, COUNT(employeeID) AS Count FROM branch b, employee e WHERE e.branchID = b.branchID GROUP BY b.branchID';
            connection.query(sql7,function (err,analysis7) {
                if (err) throw err;

                var sql8 = 'SELECT b.branchID, b.branchName, p.JobPosition, COUNT(employeeID) AS Count FROM branch b, employee e, position p WHERE e.branchID = b.branchID AND e.positionID = p.positionID GROUP BY b.branchID, p.positionID';
                connection.query(sql8,function (err,analysis8) {
                    if (err) throw err;
                    
                    var sql9 = 'SELECT b.branchID, b.branchName, e.gender, COUNT(employeeID) AS Count FROM branch b, employee e WHERE e.branchID = b.branchID GROUP BY b.branchID, e.gender';
                    connection.query(sql9,function (err,analysis9) {
                        if (err) throw err;
                                    res.render("admin/adminAnalysis", { title: 'ANALYSIS', topic4:analysis4, topic5:analysis5,topic7:analysis7,topic8:analysis8,topic9:analysis9});
                    });
                });
            });
        });
    });
});


module.exports = router;