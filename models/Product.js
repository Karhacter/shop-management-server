const conn = require("../configs/dbmysql");

const Product = {
  getAll: (result) => {
    conn.query(
      "SELECT * FROM product",
      function (err, product, fields) {
        if (err) {
          result(null);
        } else {
          result(product);
        }
      }
    );
  },
  getList: async (limit, offset, mycallback) => {
    const sql = `SELECT * FROM product WHERE status='1' ORDER BY created_at DESC LIMIT ${limit} OFFSET ${offset}`;
    await conn.query(sql, function (err, products) {
      if (err) {
        mycallback(null);
      } else {
        mycallback(products);
      }
    });
  },

  show: (id, result) => {
    const sql = `SELECT * FROM product WHERE id='${id}' LIMIT 1`;
    conn.query(sql, function (err, product, fields) {
      if (err) {
        result(null);
      } else {
        result(product);
      }
    });
  },
  store: (product, mycallback) => {
    var sql = "INSERT INTO product SET ?";
    conn.query(sql, product, function (err, result) {
      if (err) {
        mycallback(err);
      } else {
        mycallback(result);
      }
    });
  },
  edit: (product, id, mycallback) => {
    var sql = `UPDATE product SET ? WHERE id = '${id}'`;
    conn.query(sql, product, function (err, result) {
      if (err) {
        mycallback(err);
      } else {
        mycallback(result);
      }
    });
  },
  remove: (id, mycallback) => {
    var sql = `DELETE FROM product WHERE id='${id}'`;
    conn.query(sql, function (err, result) {
      if (err) {
        mycallback(err);
      } else {
        mycallback("Xóa thành công");
      }
    });
  },
  getListNew: (limit, mycallback) => {
    const sql = `SELECT * FROM product WHERE status='1' ORDER BY created_at DESC LIMIT ${limit}`;
    conn.query(sql, function (err, products) {
      if (err) {
        mycallback(null);
      } else {
        mycallback(products);
      }
    });
  },
  getListByCategory: (categoryid, limit, mycallback) => {
    const sql = `SELECT * FROM product WHERE category_id ='${categoryid}' AND status='1' LIMIT ${limit}`;
    conn.query(sql, function (err, products) {
      if (err) {
        mycallback(null);
      } else {
        mycallback(products);
      }
    });
  },
  getListByBrand: (brandid, limit, mycallback) => {
    const sql = `SELECT * FROM product WHERE brand_id ='${brandid}' AND status='1' LIMIT ${limit}`;
    conn.query(sql, function (err, products) {
      if (err) {
        mycallback(null);
      } else {
        mycallback(products);
      }
    });
  },
  getListProductCategory: async (categoryid, limit, offset, mycallback) => {
    const sql = `SELECT * FROM product WHERE status='1' AND category_id='${categoryid}' ORDER BY created_at DESC LIMIT ${limit} OFFSET ${offset}`;
    await conn.query(sql, function (err, products) {
      if (err) {
        mycallback(null);
      } else {
        mycallback(products);
      }
    });
  },
  getBySlug: async (slug, mycallback) => {
    const sql = `SELECT * FROM product WHERE slug='${slug}'`;
    await conn.query(sql, function (err, product) {
      if (err) {
        mycallback(err);
      } else {
        mycallback(product[0]);
      }
    });
  },
  getListProductOther: async (categoryid, id, limit, mycallback) => {
    const sql = `SELECT * FROM product WHERE category_id = '${categoryid}' AND status='1' AND id!='${id}'  ORDER BY created_at DESC LIMIT ${limit}`;
    // console.log(sql);
    await conn.query(sql, function (err, products) {
      if (err) {
        mycallback(null);
      } else {
        mycallback(products);
      }
    });
  },
};

module.exports = Product;
