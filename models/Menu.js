const conn = require("../configs/dbmysql");

const Menu = {
  //
  getAll: (result) => {
    conn.query("SELECT * FROM 2122110588_menu", (err, menu, fields) => {
      if (err) {
        result(null);
      } else {
        result(menu);
      }
    });
  },
  show: (id, result) => {
    const sql = `SELECT * FROM 2122110588_menu WHERE id='${id}' LIMIT 1`;
    conn.query(sql, function (err, menu, fields) {
      if (err) {
        result(null);
      } else {
        result(menu);
      }
    });
  },
  store: (menu, mycallback) => {
    var sql = "INSERT INTO 2122110588_menu SET ?";
    conn.query(sql, menu, function (err, result) {
      if (err) {
        mycallback(err);
      } else {
        mycallback(result);
      }
    });
  },
  edit: (menu, id, mycallback) => {
    var sql = `UPDATE 2122110588_menu SET ? WHERE id = '${id}'`;
    conn.query(sql, menu, function (err, result) {
      if (err) {
        mycallback(err);
      } else {
        mycallback(result);
      }
    });
  },
  delete: (id, mycallback) => {
    var sql = `DELETE FROM 2122110588_menu WHERE id='${id}'`;
    conn.query(sql, function (err, result) {
      if (err) {
        mycallback(null);
      } else {
        mycallback(`Xóa thành công ${id}`);
      }
    });
  },
  getList: (parentid, limit, mycallback) => {
    const sql = `SELECT * FROM 2122110588_menu WHERE parent_id ='${parentid}' LIMIT ${limit}`;
    conn.query(sql, function (err, menu) {
      if (err) {
        mycallback(null);
      } else {
        mycallback(menu);
      }
    });
  },
};

module.exports = Menu;
