const Order = require("../models/Order");

const OrderController = {
  index: (req, res) => {
    Order.getAll((data) => {
      if (data == null) {
        return res.status(200).json({
          orders: null,
          status: false,
          message: "Khong tim thay du lieu",
        });
      } else {
        return res.status(200).json({
          orders: data,
          status: true,
          message: "Da tim thay du lieu",
        });
      }
    });
  },
  show: (req, res) => {
    const id = req.params.id;
    Order.show(id, function (data) {
      if (data == null) {
        return res.status(200).json({
          order: null,
          status: false,
          message: "Khong tim thay du lieu",
        });
      } else {
        return res.status(200).json({
          order: data,
          status: true,
          message: "Tai du lieu thanh cong",
        });
      }
    });
  },
  store: (req, res) => {
    const formBody = req.body;
    //Lấy dũ liệu form
    const order = {
      user_id: formBody.user_id,
      deliveryname: formBody.deliveryname,
      deliveryphone: formBody.deliveryphone,
      deliveryemail: formBody.deliveryemail,
      deliveryaddress: formBody.deliveryaddress,
      note: formBody.note,
      status: formBody.status,
      created_at: "2000-2-2 10:22:11",
    };
    Order.store(order, function (data) {
      //data thứ mà nó trả về
      console.log(data);
    });
  },
  edit: (req, res) => {
    const id = req.params.id;
    const formBody = req.body;
    //Lấy dũ liệu form
    const order = {
      user_id: formBody.user_id,
      deliveryname: formBody.deliveryname,
      deliveryphone: formBody.deliveryphone,
      deliveryemail: formBody.deliveryemail,
      deliveryaddress: formBody.deliveryaddress,
      note: formBody.note,
      status: formBody.status,
      created_at: "2000-2-2 10:22:11",
    };
    Order.edit(order, id, function (data) {
      //data thứ mà nó trả về
      console.log(data);
    });
  },
  remove: async (req, res) => {
    try {
      const id = req.params.id;
      await Order.remove(id, function (order) {
        const result = {
          order: order,
          status: true,
          message: "Xóa mẫu tin thành công!",
        };
        return res.status(200).json(result);
      });
    } catch (error) {
      const result = {
        orders: null,
        status: false,
        message: error.message,
      };
      return res.status(200).json(result);
    }
  },
};

module.exports = OrderController;
