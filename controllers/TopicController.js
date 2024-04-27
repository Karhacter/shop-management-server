const Topic = require("../models/Topic");

const TopicController = {
  index: (req, res) => {
    Topic.getAll((data) => {
      if (data == null) {
        return res.status(200).json({
          topics: null,
          status: false,
          message: "Khong tim thay du lieu",
        });
      } else {
        return res.status(200).json({
          topics: data,
          status: true,
          message: "Da tim thay du lieu",
        });
      }
    });
  },
  list: async (req, res) => {
    try {
      const page = req.params.page;
      const limit = req.params.limit;
      //Xử lý page
      let offset = (page - 1) * limit;
      //
      await Topic.getList(limit, offset, function (topcis) {
        if (topcis == null) {
          const result = {
            topcis: null,
            status: false,
            message: "Không tìm thấy thông tin!",
          };
          return res.status(200).json(result);
        } else {
          const result = {
            topcis: topcis,
            status: true,
            message: "Tải dữ liệu thành công!",
          };
          return res.status(200).json(result);
        }
      });
    } catch (error) {
      const result = {
        topcis: null,
        status: false,
        message: error.message,
      };
      return res.status(200).json(result);
    }
  },
  show: (req, res) => {
    const id = req.params.id;
    Topic.show(id, function (data) {
      if (data == null) {
        return res.status(200).json({
          topic: null,
          status: false,
          message: "Khong tim thay du lieu",
        });
      } else {
        return res.status(200).json({
          topic: data,
          status: true,
          message: "Tai du lieu thanh cong",
        });
      }
    });
  },
  store: async (req, res) => {
    const formBody = req.body;
    let d = new Date();
    //Lấy dũ liệu form
    const topic = {
      name: formBody.name,
      description: formBody.description,
      status: formBody.status,
      slug: formBody.slug,
      created_by: 1,
      created_at: `${d.getFullYear()}-${d.getMonth()}-${d.getDay()} ${d.getHours()}:${d.getMinutes()}:${d.getSeconds()}`,
    };
    await Topic.store(topic, function (data) {
      const result = {
        topic: topic,
        status: true,
        message: "Thêm dữ liệu thành công!",
      };
      return res.status(200).json(result);
    });
  },
  edit: (req, res) => {
    const id = req.params.id;
    const formBody = req.body;
    //Lấy dũ liệu form
    const topic = {
      name: formBody.name,
      sort_order: formBody.sort_order,
      image: formBody.image,
      description: formBody.description,
      status: formBody.status,
      slug: "tran-duc-khanh",
      created_by: formBody.created_by,
      created_at: "2000-2-2 10:22:11",
    };
    Topic.edit(topic, id, function (data) {
      //data thứ mà nó trả về
      console.log(data);
    });
  },
  remove: async (req, res) => {
    try {
      const id = req.params.id;
      await Topic.remove(id, function (topic) {
        const result = {
          topic: topic,
          status: true,
          message: "Xóa mẫu tin thành công!",
        };
        return res.status(200).json(result);
      });
    } catch (error) {
      const result = {
        topics: null,
        status: false,
        message: error.message,
      };
      return res.status(200).json(result);
    }
  },
};

module.exports = TopicController;
