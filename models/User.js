const conn = require("../configs/dbmysql");

const User = {
  getAll: (result) => {
    conn.query(
      "SELECT * FROM 2122110588_user WHERE roles='admin'",
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
    const sql = `SELECT * FROM 2122110588_user WHERE roles='admin' and id='${id}' LIMIT 1`;
    conn.query(sql, function (err, user, fields) {
      if (err) {
        result(null);
      } else {
        result(user);
      }
    });
  },
  store: (user, mycallback) => {
    var sql = "INSERT INTO 2122110588_user SET ?";
    conn.query(sql, user, function (err, result) {
      if (err) {
        mycallback(err);
      } else {
        mycallback(result);
      }
    });
  },
  edit: (user, id, mycallback) => {
    var sql = `UPDATE 2122110588_user SET ? WHERE  id = '${id}' `;
    conn.query(sql, user, function (err, result) {
      if (err) {
        mycallback(err);
      } else {
        mycallback(result);
      }
    });
  },
  remove: (id, mycallback) => {
    var sql = `DELETE FROM 2122110588_user WHERE  id='${id}'`;
    conn.query(sql, function (err, result) {
      if (err) {
        mycallback(err);
      } else {
        mycallback("Xóa thành công");
      }
    });
  },
};

module.exports = User;
