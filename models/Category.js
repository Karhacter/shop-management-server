const conn = require("../configs/dbmysql");

const Category = {
  getAll: (result) => {
    conn.query("SELECT * FROM category", (err, category, fields) => {
      if (err) {
        result(null);
      } else {
        result(category);
      }
    });
  },
  show: (id, result) => {
    const sql = `SELECT * FROM category WHERE id='${id}' LIMIT 1`;
    conn.query(sql, function (err, category, fields) {
      if (err) {
        result(null);
      } else {
        result(category);
      }
    });
  },
  store: (category, mycallback) => {
    var sql = "INSERT INTO category SET ?";
    conn.query(sql, category, function (err, result) {
      if (err) {
        mycallback(err);
      } else {
        mycallback(result);
      }
    });
  },
  edit: (category, id, mycallback) => {
    var sql = `UPDATE category SET ? WHERE id = '${id}'`;
    conn.query(sql, category, function (err, result) {
      if (err) {
        mycallback(err);
      } else {
        mycallback(result);
      }
    });
  },
  delete: (id, mycallback) => {
    var sql = `DELETE FROM category WHERE id='${id}'`;
    conn.query(sql, function (err, result) {
      if (err) {
        mycallback(null);
      } else {
        mycallback(`Xóa thành công ${id}`);
      }
    });
  },
  getList: (parentid, mycallback) => {
    const sql = `SELECT * FROM category WHERE parent_id ='${parentid}' AND status='1'`;
    conn.query(sql, function (err, categorys) {
      if (err) {
        mycallback(null);
      } else {
        mycallback(categorys);
      }
    });
  },
  getBySlug: async (slug, mycallback) => {
    const sql = `SELECT * FROM category WHERE slug='${slug}' LIMIT 1`;
    await conn.query(sql, function (err, category) {
      if (err) {
        mycallback(err);
      } else {
        mycallback(category);
      }
    });
  },
  getListOther: async (sort_order, id, limit, mycallback) => {
    const sql = `SELECT * FROM category WHERE sort_order = '${sort_order}' AND status='1' AND id!='${id}'  ORDER BY created_at DESC LIMIT ${limit}`;
    // console.log(sql);
    await conn.query(sql, function (err, categorys) {
      if (err) {
        mycallback(null);
      } else {
        mycallback(categorys);
      }
    });
  },
};

module.exports = Category;
