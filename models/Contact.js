const conn = require("../configs/dbmysql");

const Contact = {
  getAll: (result) => {
    conn.query("SELECT * FROM 2122110588_contact", (err, contact, fields) => {
      if (err) {
        result(null);
      } else {
        result(contact);
      }
    });
  },
  show: (id, result) => {
    const sql = `SELECT * FROM 2122110588_contact WHERE id='${id}' LIMIT 1`;
    conn.query(sql, function (err, contact, fields) {
      if (err) {
        result(null);
      } else {
        result(contact);
      }
    });
  },
  store: (contact, mycallback) => {
    var sql = "INSERT INTO 2122110588_contact SET ?";
    conn.query(sql, contact, function (err, result) {
      if (err) {
        mycallback(err);
      } else {
        mycallback(result);
      }
    });
  },
  edit: (contact, id, mycallback) => {
    var sql = `UPDATE 2122110588_contact SET ? WHERE id = '${id}'`;
    conn.query(sql, contact, function (err, result) {
      if (err) {
        mycallback(err);
      } else {
        mycallback(result);
      }
    });
  },
  remove: (id, mycallback) => {
    var sql = `DELETE FROM 2122110588_contact WHERE id='${id}'`;
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
