const Customer = require("../models/Customer");

const CustomerController = {
  index: (req, res) => {
    Customer.getAll((data) => {
      if (data == null) {
        return res.status(200).json({
          customers: null,
          status: false,
          message: "Khong tim thay du lieu",
        });
      } else {
        return res.status(200).json({
          customers: data,
          status: true,
          message: "Da tim thay du lieu",
        });
      }
    });
  },
  show: (req, res) => {
    const id = req.params.id;
    Customer.show(id, function (data) {
      if (data == null) {
        return res.status(200).json({
          customer: null,
          status: false,
          message: "Khong tim thay du lieu",
        });
      } else {
        return res.status(200).json({
          customer: data,
          status: true,
          message: "Tai du lieu thanh cong",
        });
      }
    });
  },
  store: (req, res) => {
    const formBody = req.body;
    //Lấy dũ liệu form
    const customer = {
      name: formBody.name,
      email: formBody.email,
      gender: formBody.gender,
      phone: formBody.phone,
      username: formBody.username,
      password: formBody.password,
      image: formBody.image,
      roles: formBody.roles,
      created_by: formBody.created_by,
      status: formBody.status,
      created_at: "2000-2-2 10:22:11",
    };
    Customer.store(customer, function (data) {
      //data thứ mà nó trả về
      console.log(data);
    });
  },
  edit: async (req, res) => {
    const id = req.params.id;
    const formBody = req.body;
    let image = req.files.image;
    image.mv("./assets/images/customers/" + image.name, function (err, result) {
      if (err) throw err;
    });
    let d = new Date();
    //Lấy dũ liệu form
    const customer = {
      name: formBody.name,
      email: formBody.email,
      gender: formBody.gender,
      phone: formBody.phone,
      image: image.name,
      username: formBody.username,
      password: formBody.password,
      image: formBody.image,
      roles: formBody.roles,
      created_by: formBody.created_by,
      status: formBody.status,
      created_at: `${d.getFullYear()}-${d.getMonth()}-${d.getDay()} ${d.getHours()}:${d.getMinutes()}:${d.getSeconds()}`,
    };
    await Customer.edit(customer, id, function (data) {
      const result = {
        customer: customer,
        status: true,
        message: "Cập nhật dữ liệu thành công!",
      };
      return res.status(200).json(result);
    });
  },
  remove: async (req, res) => {
    try {
      const id = req.params.id;
      await Customer.remove(id, function (customer) {
        const result = {
          customer: customer,
          status: true,
          message: "Xóa mẫu tin thành công!",
        };
        return res.status(200).json(result);
      });
    } catch (error) {
      const result = {
        customer: null,
        status: false,
        message: error.message,
      };
      return res.status(200).json(result);
    }
  },
};

module.exports = CustomerController;
