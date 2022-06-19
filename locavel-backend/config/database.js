// Call env
require('dotenv').config();

// Require mysql
var mysql = require('mysql');

// Create a connection
var connection = mysql.createConnection({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME,
});

// Export the connection
module.exports = connection;
