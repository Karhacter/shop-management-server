const conn = require("../configs/dbmysql");

const Contact = {
  getAll: (result) => {
    conn.query("SELECT * FROM contact", (err, contact, fields) => {
      if (err) {
        result(null);
      } else {
        result(contact);
      }
    });
  },
  show: (id, result) => {
    const sql = `SELECT * FROM contact WHERE id='${id}' LIMIT 1`;
    conn.query(sql, function (err, contact, fields) {
      if (err) {
        result(null);
      } else {
        result(contact);
      }
    });
  },
  store: (contact, mycallback) => {
    var sql = "INSERT INTO contact SET ?";
    conn.query(sql, contact, function (err, result) {
      if (err) {
        mycallback(err);
      } else {
        mycallback(result);
      }
    });
  },
  edit: (contact, id, mycallback) => {
    var sql = `UPDATE contact SET ? WHERE id = '${id}'`;
    conn.query(sql, contact, function (err, result) {
      if (err) {
        mycallback(err);
      } else {
        mycallback(result);
      }
    });
  },
  remove: (id, mycallback) => {
    var sql = `DELETE FROM contact WHERE id='${id}'`;
    conn.query(sql, function (err, result) {
      if (err) {
        mycallback(err);
      } else {
        mycallback("Xóa thành công");
      }
    });
  },
};

module.exports = Contact;
