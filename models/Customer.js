const conn = require("../configs/dbmysql");

const Customer = {
  getAll: (result) => {
    conn.query(
      "SELECT * FROM user WHERE roles='customer' ORDER BY ID DESC",
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
    const sql = `SELECT * FROM user WHERE roles='customer' and id='${id}' LIMIT 1`;
    conn.query(sql, function (err, customer, fields) {
      if (err) {
        result(null);
      } else {
        result(customer);
      }
    });
  },
  store: (customer, mycallback) => {
    var sql = "INSERT INTO user SET ?";
    conn.query(sql, customer, function (err, result) {
      if (err) {
        mycallback(err);
      } else {
        mycallback(result);
      }
    });
  },
  edit: (customer, id, mycallback) => {
    var sql = `UPDATE user SET ? WHERE id = '${id}'`;
    conn.query(sql, customer, function (err, result) {
      if (err) {
        mycallback(err);
      } else {
        mycallback(result);
      }
    });
  },
  remove: (id, mycallback) => {
    var sql = `DELETE FROM user WHERE id='${id}'`;
    conn.query(sql, function (err, result) {
      if (err) {
        mycallback(err);
      } else {
        mycallback("Xóa thành công");
      }
    });
  },
};

module.exports = Customer;
