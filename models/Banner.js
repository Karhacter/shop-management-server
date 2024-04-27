const conn = require("../configs/dbmysql");

const Banner = {
  getAll: (result) => {
    conn.query("SELECT * FROM 2122110588_banner", (err, banner, fields) => {
      if (err) {
        result(null);
      } else {
        result(banner);
      }
    });
  },
  show: (id, result) => {
    const sql = `SELECT * FROM 2122110588_banner WHERE id='${id}' LIMIT 1`;
    conn.query(sql, function (err, banner, fields) {
      if (err) {
        result(null);
      } else {
        result(banner);
      }
    });
  },
  store: (banner, mycallback) => {
    var sql = "INSERT INTO 2122110588_banner SET ?";
    conn.query(sql, banner, function (err, result) {
      if (err) {
        mycallback(err);
      } else {
        mycallback(result);
      }
    });
  },
  edit: (banner, id, mycallback) => {
    var sql = `UPDATE 2122110588_banner SET ? WHERE id = '${id}'`;
    conn.query(sql, banner, function (err, result) {
      if (err) {
        mycallback(err);
      } else {
        mycallback(result);
      }
    });
  },
  delete: (id, mycallback) => {
    var sql = `DELETE FROM 2122110588_banner WHERE id='${id}'`;
    conn.query(sql, function (err, result) {
      if (err) {
        mycallback(err);
      } else {
        mycallback("Xóa thành công");
      }
    });
  },
  getList: (position, mycallback) => {
    const sql = `SELECT * FROM 2122110588_banner WHERE position ='${position}' AND status='1'`;
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
