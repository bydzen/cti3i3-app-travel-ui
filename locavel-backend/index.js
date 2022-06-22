// Require module
var express = require('express'),
    http = require('http');

// MySQL required
var connection = require('./config/database');

// The app express
var app = express();

// Middleware
// Parsing the body
app.use(express.urlencoded({ extended: false }));

// Parsing the JSON
app.use(express.json());

// App port
app.set('port', process.env.PORT || 4000);

// Trust proxy
app.set('trust proxy', true);

// Connect and check the database
connection.connect();
connection.query('SELECT 1 + 1 AS solution', function (error, results) {
    if (error) throw error;
    console.log(
        'The solution is: ',
        results[0].solution,
        ' database connetcted successfully!'
    );
});

// Root path
app.get('/', function (_req, res) {
    res.json({
        message: 'Welcome to LocaVel API',
    });
});

// Get user by id
app.get('/user/:id', function (req, res) {
    const id = req.params.id;
    connection.query(
        'SELECT * FROM user WHERE id = ?',
        [id],
        function (error, results, fields) {
            if (error) throw error;
            res.json(results);
        }
    );
});

// Post wisata
app.post('/wisata', function (req, res) {
    var data = {
        nama: req.body.nama,
        tempat: req.body.tempat,
        harga: req.body.harga,
        konten: req.body.konten,
        rating: req.body.rating,
        gambar: req.body.gambar,
    };
    connection.query(
        'INSERT INTO wisata SET ?',
        data,
        function (error, results) {
            if (error) throw error;
            res.json({
                message: 'Wisata berhasil ditambahkan',
                data: data,
            });
        }
    );
});

// Get wisata
app.get('/wisata', function (req, res) {
    connection.query('SELECT * FROM wisata', function (error, results) {
        if (error) throw error;
        res.json(results);
    });
});

// Get wisata by id
app.get('/wisata/:id', function (req, res) {
    connection.query(
        'SELECT * FROM wisata WHERE id = ?',
        [req.params.id],
        function (error, results) {
            if (error) throw error;
            res.json(results);
        }
    );
});

// Creating the server
http.createServer(app).listen(app.get('port'), function () {
    console.log('Listening to ' + app.get('port'));
});
