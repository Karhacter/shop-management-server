const mysql = require("mysql");

const conn = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "shop_dbase",
});

conn.connect(function (err) {
  if (err) throw err;
  console.log("Connected");
});

module.exports = conn;
