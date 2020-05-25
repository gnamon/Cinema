var express = require("express");
var router = express.Router();
const connection = require("../../connection/connection");
var middleware = require("../../middleware/index");
var {
    isAdmin
} = middleware;

router.get('/adminaddmovies',isAdmin, function (req, res) {
    var get_type = "SELECT * FROM theatertype";
    connection.query(get_type, function (err, foundTypes) {
        if (err) {
            throw err;
        } else {
            var get_genres = "SELECT * FROM moviegenre"
            connection.query(get_genres, function (err, foundGenres) {
                if (err) {
                    throw err;
                } else {
                    var get_director = "SELECT * FROM directors"
                    connection.query(get_director, function (err, founddirector) {
                        if (err) {
                            throw err;
                        } else {
                            res.render("admin/adminaddmovies",{Types:foundTypes, genres:foundGenres, Directors:founddirector});
                        }
                    })
                }
            })

        }
    })
})


router.get('/adminaddShowtime',isAdmin, function (req, res) {
    var get_theater = "SELECT * FROM theater";
    var get_movie= "SELECT * FROM moviedata";

    connection.query(get_theater, function (err, foundTheater) {
        if (err) {
            throw err;
        } else {
            connection.query(get_movie, function (err, foundMovie) {
                if (err) {
                    throw err;
                } else {
                    res.render("admin/adminaddShowtime",{theaters:foundTheater, movies:foundMovie});       
                }
            })

        }
    })
})


router.post('/adminaddShowtime',isAdmin, function (req, res) {
    var movie = req.body.movie;
    var theather = req.body.theather;
    var showtime = req.body.showtime;
    var audio = req.body.audio;
    console.log(movie);
    console.log(theather);
    console.log(showtime);
    console.log(audio);
    var sql_AddShowtime = "INSERT INTO movieshowtime (theaterID,showtime,movieID,audio) VALUES ('"+theather+"','"+showtime+"', '"+movie+"', '"+audio+"')";
    connection.query(sql_AddShowtime, function (err, foundTheater) {
        if (err) {
            throw err;
        } else {
            res.redirect("/manageAdmin");
        }
    })
})



module.exports = router;