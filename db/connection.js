const mysql = require("mysql2");

// Connect to database
const db = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "3m!ly!$HighM@int3nance!",
  database: "election",
});

module.exports = db;