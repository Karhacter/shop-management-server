const conn = require("../configs/dbmysql");

const Topic = {
  getAll: (result) => {
    conn.query("SELECT * FROM topic", (err, topic, fields) => {
      if (err) {
        result(null);
      } else {
        result(topic);
      }
    });
  },
  getList: async (limit, offset, mycallback) => {
    const sql = `SELECT * FROM topic WHERE status='1' ORDER BY created_at DESC LIMIT ${limit} OFFSET ${offset}`;
    await conn.query(sql, function (err, topics) {
      if (err) {
        mycallback(null);
      } else {
        mycallback(topics);
      }
    });
  },
  show: (id, result) => {
    const sql = `SELECT * FROM topic WHERE id='${id}' LIMIT 1`;
    conn.query(sql, function (err, topic, fields) {
      if (err) {
        result(null);
      } else {
        result(topic);
      }
    });
  },
  store: (topic, mycallback) => {
    var sql = "INSERT INTO topic SET ?";
    conn.query(sql, topic, function (err, result) {
      if (err) {
        mycallback(err);
      } else {
        mycallback(result);
      }
    });
  },
  edit: (topic, id, mycallback) => {
    var sql = `UPDATE topic SET ? WHERE id = '${id}'`;
    conn.query(sql, topic, function (err, result) {
      if (err) {
        mycallback(err);
      } else {
        mycallback(result);
      }
    });
  },
  remove: (id, mycallback) => {
    var sql = `DELETE FROM topic WHERE id='${id}'`;
    conn.query(sql, function (err, result) {
      if (err) {
        mycallback(err);
      } else {
        mycallback("Xóa thành công");
      }
    });
  },
};

module.exports = Topic;
