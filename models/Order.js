const conn = require("../configs/dbmysql");

const Order = {
  getAll: (result) => {
    conn.query("SELECT * FROM 2122110588_order", (err, order, fields) => {
      if (err) {
        result(null);
      } else {
        result(order);
      }
    });
  },
  show: (id, result) => {
    const sql = `SELECT * FROM 2122110588_order WHERE id='${id}' LIMIT 1`;
    conn.query(sql, function (err, order, fields) {
      if (err) {
        result(null);
      } else {
        result(order);
      }
    });
  },
  store: (order, mycallback) => {
    var sql = "INSERT INTO 2122110588_order SET ?";
    conn.query(sql, order, function (err, result) {
      if (err) {
        mycallback(err);
      } else {
        mycallback(result);
      }
    });
  },
  edit: (order, id, mycallback) => {
    var sql = `UPDATE 2122110588_order SET ? WHERE id = '${id}'`;
    conn.query(sql, order, function (err, result) {
      if (err) {
        mycallback(err);
      } else {
        mycallback(result);
      }
    });
  },
  remove: (id, mycallback) => {
    var sql = `DELETE FROM 2122110588_order WHERE id='${id}'`;
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
