var express = require("express");
var router = express.Router();
const connection = require("../../connection/connection");
var middleware = require("../../middleware/index");
var {
    isAdmin
} = middleware;

router.get('/moviedata',isAdmin, function (req, res) {
    var getmovies = 'SELECT m.*, g.genreTypeName, d.fName, d.lName, tt.TheaterTypeName FROM moviedata m, moviegenre g, directors d ,theatertype tt WHERE m.directorID = d.directorID AND m.genreTypeID = g.genreTypeID AND m.theatertypeID = tt.theaterTypeID ORDER BY m.movieID' ;
    connection.query(getmovies, function(err, rs) {
        if (err) throw err;
        else {
            res.render("admin/moviedata", {movieData:rs});
        }
    })
})

router.get('/movieform',isAdmin, function (req,res,next) {
    var get_movie = "SELECT m.*, g.genreTypeName, d.fName, d.lName, tt.TheaterTypeName FROM moviedata m, moviegenre g, directors d ,theatertype tt WHERE m.directorID = d.directorID AND m.genreTypeID = g.genreTypeID AND m.theatertypeID = tt.theaterTypeID ORDER BY m.movieID";
    connection.query(get_movie, function (err, rsmovie) {
        if (err) {
            throw err;
        } else {
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
                                    res.render("admin/adminaddmovies", {mData:rsmovie, Types:foundTypes, genres:foundGenres, Directors:founddirector, data: {}, success:0});
                                }
                            })
                        }
                    })
                }
            })
        }
    })
});

router.post("/movieform",isAdmin, function (req, res) {
    var MovieName = req.body.MovieName;
    var GenreTypeID = req.body.genreTypeID;
    var MovieDetail = req.body.MovieDetail;
    var Movielength = req.body.Movielength;
    var Starring = req.body.Starring;
    var MovieRate = req.body.MovieRate;
    var releasedd = req.body.rdd;
    var releasemm = req.body.rmm;
    var releaseyy = req.body.ryy;
    var outdd = req.body.outdd;
    var outmm = req.body.outmm;
    var outyy = req.body.outyy;
    var Audio = req.body.Audio;
    var MovieImage = req.body.MovieImage;
    var theaterTypeID = req.body.theaterTypeID;
    
    var directorID = req.body.directorID;
    var fName = req.body.fName;
    var lName = req.body.lName;
    var nationality = req.body.nationality;
    var education = req.body.education;
    if (directorID == 0) {
        directorID = null;
        if (fName != '') {
            var sql_director = "INSERT INTO directors (fName,lName) VALUES ('"+fName+"','"+lName+"')";
            connection.query(sql_director, function (err,result){
            if (err) throw err;
            })
        }
        
    }
    //console.log(MovieImage)
    var sql = "INSERT INTO moviedata (movieName,genreTypeID,movieDetail,movieLenght,starring,rate,ReleaseDay, ReleaseMonth,ReleaseYear,OutDay,OutMonth,OutYear,audio, imageLink, theaterTypeID, directorID) VALUES ('"+MovieName+"', "+GenreTypeID+", '"+MovieDetail+"', '"+Movielength+"', '"+Starring+"', '"+MovieRate+"', '"+releasedd+"', '"+releasemm+"', '"+releaseyy+"', '"+outdd+"', '"+outmm+"', '"+outyy+"', '"+Audio+"', '"+MovieImage+"','"+theaterTypeID+"',"+directorID+")"
    connection.query(sql, function (err, result) {
        if (err) throw err;
        else {
            if (directorID == null){
                var sql_update = "UPDATE moviedata SET moviedata.directorID = (SELECT directorID FROM directors WHERE fName = '"+fName+"') WHERE moviedata.directorID IS NULL AND moviedata.movieName = '"+MovieName+"'";
                connection.query(sql_update, function (err, result) {
                    if (err) throw err;
                })
            }
            
            res.redirect("/moviedata");
    
        }
    })

})

router.get('/deletemovie', function(req,res,next) {
    connection.query('DELETE FROM moviedata WHERE movieID = ?', req.query.id, function(err,rs) {
        res.redirect("/moviedata");
    })
});

router.get('/editmovie', function(req,res,next) {
    var get_type = "SELECT * FROM theatertype";
    connection.query(get_type, function (err, foundTypes) {
        if (err) {
            throw err;
        } else {
            var get_genres = "SELECT * FROM moviegenre";
            connection.query(get_genres, function (err, foundGenres) {
                if (err) {
                    throw err;
                } else {
                    var get_director = "SELECT * FROM directors";
                    connection.query(get_director, function (err, founddirector) {
                        if (err) throw err;
                        connection.query('SELECT * FROM moviedata WHERE movieID = ?', req.query.id, function(err,rs) {
                        res.render('admin/adminaddmovies', {Types:foundTypes, genres:foundGenres, Directors:founddirector, data: rs[0]});
                        })
                        
                    })
                }
            })
        }
    })
    
});

router.post('/editmovie', function(req,res,next) {
    var MovieName = req.body.MovieName;
    var GenreTypeID = req.body.genreTypeID;
    var MovieDetail = req.body.MovieDetail;
    var Movielength = req.body.Movielength;
    var Starring = req.body.Starring;
    var MovieRate = req.body.MovieRate;
    var releasedd = req.body.rdd;
    var releasemm = req.body.rmm;
    var releaseyy = req.body.ryy;
    var outdd = req.body.outdd;
    var outmm = req.body.outmm;
    var outyy = req.body.outyy;
    var Audio = req.body.Audio;
    var MovieImage = req.body.MovieImage;
    var theaterTypeID = req.body.theaterTypeID;
    
    var directorID = req.body.directorID;
    var fName = req.body.fName;
    var lName = req.body.lName;
    var nationality = req.body.nationality;
    var education = req.body.education;

    var sql_update = "UPDATE moviedata SET movieName = '"+MovieName+"', genreTypeID = "+GenreTypeID+", movieDetail = '"+MovieDetail+"', movieLenght = '"+Movielength+"',starring = '"+Starring+"',rate = '"+MovieRate+"',ReleaseDay = '"+releasedd+"', ReleaseMonth = '"+releasemm+"',ReleaseYear = '"+releaseyy+"',OutDay = '"+outdd+"',OutMonth = '"+outmm+"',OutYear = '"+outyy+"',audio = '"+Audio+"', imageLink = '"+MovieImage+"', theaterTypeID = '"+theaterTypeID+"', directorID = '"+directorID+"' WHERE movieID = ?";
    connection.query(sql_update, req.query.id,function (err, result) {
        if (err) throw err;
         res.redirect('/moviedata');
        })
})


module.exports = router;