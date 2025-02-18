const conn = require("../configs/dbmysql");

const Banner = {
  getAll: (result) => {
    conn.query("SELECT * FROM banner", (err, banner, fields) => {
      if (err) {
        result(null);
      } else {
        result(banner);
      }
    });
  },
  show: (id, result) => {
    const sql = `SELECT * FROM banner WHERE id='${id}' LIMIT 1`;
    conn.query(sql, function (err, banner, fields) {
      if (err) {
        result(null);
      } else {
        result(banner);
      }
    });
  },
  store: (banner, mycallback) => {
    var sql = "INSERT INTO banner SET ?";
    conn.query(sql, banner, function (err, result) {
      if (err) {
        mycallback(err);
      } else {
        mycallback(result);
      }
    });
  },
  edit: (banner, id, mycallback) => {
    var sql = `UPDATE banner SET ? WHERE id = '${id}'`;
    conn.query(sql, banner, function (err, result) {
      if (err) {
        mycallback(err);
      } else {
        mycallback(result);
      }
    });
  },
  delete: (id, mycallback) => {
    var sql = `DELETE FROM banner WHERE id='${id}'`;
    conn.query(sql, function (err, result) {
      if (err) {
        mycallback(err);
      } else {
        mycallback("Xóa thành công");
      }
    });
  },
  getList: (position, mycallback) => {
    const sql = `SELECT * FROM banner WHERE position ='${position}' AND status='1'`;
    conn.query(sql, function (err, banners) {
      if (err) {
        mycallback(null);
      } else {
        mycallback(banners);
      }
    });
  },
};

module.exports = Banner;
