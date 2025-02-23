const conn = require("../configs/dbmysql");

const User = {
  getAll: (result) => {
    conn.query(
      "SELECT * FROM user WHERE roles='admin'",
      (err, user, fields) => {
        if (err) {
          result(null);
        } else {
          result(user);
        }
      }
    );
  },
  show: (id, result) => {
    const sql = `SELECT * FROM user WHERE roles='admin' and id='${id}' LIMIT 1`;
    conn.query(sql, function (err, user, fields) {
      if (err) {
        result(null);
      } else {
        result(user);
      }
    });
  },
  store: (user, mycallback) => {
    var sql = "INSERT INTO user SET ?";
    conn.query(sql, user, function (err, result) {
      if (err) {
        mycallback(err);
      } else {
        mycallback(result);
      }
    });
  },
  edit: (user, id, mycallback) => {
    var sql = `UPDATE user SET ? WHERE  id = '${id}' `;
    conn.query(sql, user, function (err, result) {
      if (err) {
        mycallback(err);
      } else {
        mycallback(result);
      }
    });
  },
  remove: (id, mycallback) => {
    var sql = `DELETE FROM user WHERE  id='${id}'`;
    conn.query(sql, function (err, result) {
      if (err) {
        mycallback(err);
      } else {
        mycallback("Xóa thành công");
      }
    });
  },
  login: (user, mycallback) => {
    const sql = `SELECT * FROM user WHERE email = ? AND password =?`;
    conn.query(sql, [user.email, user.password], (err, data) => {
      if (err) {
        mycallback(err); // Handle error appropriately (e.g., log, display message)
      } else if (data.length > 0) {
        // Successful login
        mycallback(null, data[0]); // Pass the user data as the second argument
      } else {
        // Login failed
        mycallback(new Error('Invalid email or password'));
      }
    });
  }
};

module.exports = User;
