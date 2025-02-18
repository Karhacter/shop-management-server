const conn = require("../configs/dbmysql");

const Brand = {
  getAll: (result) => {
    conn.query("SELECT * FROM brand", (err, brand, fields) => {
      if (err) {
        result(null);
      } else {
        result(brand);
      }
    });
  },
  show: (id, result) => {
    const sql = `SELECT * FROM brand WHERE id='${id}' LIMIT 1`;
    conn.query(sql, function (err, brand, fields) {
      if (err) {
        result(null);
      } else {
        result(brand);
      }
    });
  },
  store: (brand, mycallback) => {
    var sql = "INSERT INTO brand SET ?";
    conn.query(sql, brand, function (err, result) {
      if (err) {
        mycallback(err);
      } else {
        mycallback(result);
      }
    });
  },
  edit: (brand, id, mycallback) => {
    var sql = `UPDATE brand SET ? WHERE id = '${id}'`;
    conn.query(sql, brand, function (err, result) {
      if (err) {
        mycallback(err);
      } else {
        mycallback(result);
      }
    });
  },
  delete: (id, mycallback) => {
    var sql = `DELETE FROM brand WHERE id='${id}'`;
    conn.query(sql, function (err, result) {
      if (err) {
        mycallback(err);
      } else {
        mycallback(`Xóa thành công ${id}`);
      }
    });
  },
  getBySlug: async (slug, mycallback) => {
    const sql = `SELECT * FROM brand WHERE slug='${slug}' LIMIT 1`;
    await conn.query(sql, function (err, category) {
      if (err) {
        mycallback(err);
      } else {
        mycallback(category);
      }
    });
  },
  getListOther: async (sort_order, id, limit, mycallback) => {
    const sql = `SELECT * FROM brand WHERE sort_order = '${sort_order}' AND status='1' AND id!='${id}'  ORDER BY created_at DESC LIMIT ${limit}`;
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

module.exports = Brand;
