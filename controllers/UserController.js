const User = require("../models/User");

const UserController = {
  index: (req, res) => {
    User.getAll((data) => {
      if (data == null) {
        return res.status(200).json({
          users: null,
          status: false,
          message: "Khong tim thay du lieu",
        });
      } else {
        return res.status(200).json({
          users: data,
          status: true,
          message: "Da tim thay du lieu",
        });
      }
    });
  },
  show: (req, res) => {
    const id = req.params.id;
    User.show(id, function (data) {
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
  store: async (req, res) => {
    try {
      const formBody = req.body;
      let image = req.files.image;
      image.mv("./assets/images/users/" + image.name, function (err, result) {
        if (err) throw err;
      });
      let d = new Date();
      //Lấy dũ liệu form
      const user = {
        name: formBody.name,
        email: formBody.email,
        gender: formBody.gender,
        phone: formBody.phone,
        username: formBody.username,
        password: formBody.password,
        address: formBody.address,
        image: formBody.image,
        roles: formBody.roles,
        created_by: 1,
        status: formBody.status,
        created_at: `${d.getFullYear()}-${d.getMonth()}-${d.getDay()} ${d.getHours()}:${d.getMinutes()}:${d.getSeconds()}`,
      };
      await User.store(user, function (data) {
        //data thứ mà nó trả về
        const result = {
          user: user,
          status: true,
          message: "Thêm dữ liệu thành công!",
        };
        return res.status(200).json(result);
      });
    } catch (error) {
      const result = {
        user: null,
        status: false,
        message: error.message,
      };
      return res.status(200).json(result);
    }
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
    const user = {
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
    await User.edit(user, id, function (data) {
      const result = {
        user: user,
        status: true,
        message: "Cập nhật dữ liệu thành công!",
      };
      return res.status(200).json(result);
    });
  },
  remove: async (req, res) => {
    try {
      const id = req.params.id;
      await User.remove(id, function (user) {
        const result = {
          user: user,
          status: true,
          message: "Xóa mẫu tin thành công!",
        };
        return res.status(200).json(result);
      });
    } catch (error) {
      const result = {
        user: null,
        status: false,
        message: error.message,
      };
      return res.status(200).json(result);
    }
  },
};

module.exports = UserController;
