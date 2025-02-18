const conn = require("../configs/dbmysql");

const Post = {
  getAll: (result) => {
    conn.query("SELECT * FROM post", (err, post, fields) => {
      if (err) {
        result(null);
      } else {
        result(post);
      }
    });
  },
  show: (id, result) => {
    const sql = `SELECT * FROM post WHERE id='${id}' LIMIT 1`;
    conn.query(sql, function (err, post, fields) {
      if (err) {
        result(null);
      } else {
        result(post);
      }
    });
  },
  store: (post, mycallback) => {
    var sql = "INSERT INTO post SET ?";
    conn.query(sql, post, function (err, result) {
      if (err) {
        mycallback(err);
      } else {
        mycallback(result);
      }
    });
  },
  edit: (post, id, mycallback) => {
    var sql = `UPDATE post SET ? WHERE id = '${id}'`;
    conn.query(sql, post, function (err, result) {
      if (err) {
        mycallback(err);
      } else {
        mycallback(result);
      }
    });
  },
  remove: (id, mycallback) => {
    var sql = `DELETE FROM post WHERE id='${id}'`;
    conn.query(sql, function (err, result) {
      if (err) {
        mycallback(err);
      } else {
        mycallback("Xóa thành công");
      }
    });
  },
  getList: (result) => {
    conn.query(
      "SELECT * FROM post WHERE type = 'post' ORDER BY created_at DESC",
      (err, post, fields) => {
        if (err) {
          result(null);
        } else {
          result(post);
        }
      }
    );
  },
  getBySlug: async (slug, mycallback) => {
    const sql = `SELECT * FROM post WHERE slug='${slug}' LIMIT 1`;
    await conn.query(sql, function (err, post) {
      if (err) {
        mycallback(err);
      } else {
        mycallback(post[0]);
      }
    });
  },
  getListOther: async (topic_id, id, limit, mycallback) => {
    const sql = `SELECT * FROM post WHERE  topic_id = ${topic_id} AND status='1' AND id!='${id}'  ORDER BY created_at DESC LIMIT ${limit}`;
    // console.log(sql);
    await conn.query(sql, function (err, posts) {
      if (err) {
        mycallback(null);
      } else {
        mycallback(posts);
      }
    });
  },
  getListNew: (limit, mycallback) => {
    const sql = `SELECT * FROM post WHERE status='1' and  type = 'post' ORDER BY created_at DESC LIMIT ${limit}`;
    conn.query(sql, function (err, posts) {
      if (err) {
        mycallback(null);
      } else {
        mycallback(posts);
      }
    });
  },
};

module.exports = Post;
