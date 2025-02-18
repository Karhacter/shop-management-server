const conn = require("../configs/dbmysql");

const Order = {
  getAll: (result) => {
    conn.query("SELECT * FROM order", (err, order, fields) => {
      if (err) {
        result(null);
      } else {
        result(order);
      }
    });
  },
  show: (id, result) => {
    const sql = `SELECT * FROM order WHERE id='${id}' LIMIT 1`;
    conn.query(sql, function (err, order, fields) {
      if (err) {
        result(null);
      } else {
        result(order);
      }
    });
  },
  store: (order, mycallback) => {
    var sql = "INSERT INTO order SET ?";
    conn.query(sql, order, function (err, result) {
      if (err) {
        mycallback(err);
      } else {
        mycallback(result);
      }
    });
  },
  edit: (order, id, mycallback) => {
    var sql = `UPDATE order SET ? WHERE id = '${id}'`;
    conn.query(sql, order, function (err, result) {
      if (err) {
        mycallback(err);
      } else {
        mycallback(result);
      }
    });
  },
  remove: (id, mycallback) => {
    var sql = `DELETE FROM order WHERE id='${id}'`;
    conn.query(sql, function (err, result) {
      if (err) {
        mycallback(err);
      } else {
        mycallback("Xóa thành công");
      }
    });
  },
};

module.exports = Order;
