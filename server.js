const express = require("express");
const PORT = process.env.PORT || 3001;
const app = express();
const mysql = require("mysql2");

// Express middleware
app.use(express.urlencoded({ extended: false }));
app.use(express.json());

// Connect to database
const db = mysql.createConnection(
  {
    host: "localhost",
    user: "root",
    password: "3m!ly!$HighM@int3nance!",
    database: "election",
  },
  console.log("Connected to the election database.")
);

app.get("/", (req, res) => {
  res.json({
    message: "Hello World",
  });
});

// Returns all the data in the candidates table
// db.query(`SELECT * FROM candidates`, (err, rows) => {
//   console.log(rows);
// });

// GET a single candidate
// db.query(`SELECT * FROM candidates WHERE id = 1`, (err, row) => {
//   if (err) {
//     console.log(err);
//   }
//   console.log(row);
// });

// Delete a candidate
// db.query(`DELETE FROM candidates WHERE id = ?`, 1, (err, result) => {
//   if (err) {
//     console.log(err);
//   }
//   console.log(result);
// });

// Create a candidate
const sql = `INSERT INTO candidates (id, first_name, last_name, industry_connected)
              VALUES(?,?,?,?)`;

const params = [1, "Gavilar", "Kholin", 0];

db.query(sql, params, (err, result) => {
  if (err) {
    console.log(err);
  }
  console.log(result);
});

// Default response for any other request (Not Found)
// IT MUST BE THE LAST ROUTE OR IT WILL BREAK THE CODE
// BY NOT ALLOWING THE OTHER ROUTES TO FIRE
app.use((req, res) => {
  res.status(404).end();
});

// starts Express.js server on port 3001
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});