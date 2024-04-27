const Contact = require("../models/Contact");

const ContactController = {
  index: (req, res) => {
    Contact.getAll((data) => {
      if (data == null) {
        return res.status(200).json({
          contacts: null,
          status: false,
          message: "Khong tim thay du lieu",
        });
      } else {
        return res.status(200).json({
          contacts: data,
          status: true,
          message: "Da tim thay du lieu",
        });
      }
    });
  },
  show: (req, res) => {
    const id = req.params.id;
    Contact.show(id, function (data) {
      if (data == null) {
        return res.status(200).json({
          contact: null,
          status: false,
          message: "Khong tim thay du lieu",
        });
      } else {
        return res.status(200).json({
          contact: data,
          status: true,
          message: "Tai du lieu thanh cong",
        });
      }
    });
  },
  store: async (req, res) => {
    try {
      const formBody = req.body;
      let d = new Date();
      //Lấy dũ liệu form
      const contact = {
        name: formBody.name,
        email: formBody.email,
        phone: formBody.phone,
        title: formBody.title,
        content: formBody.content,
        created_at: `${d.getFullYear()}-${d.getMonth()}-${d.getDay()} ${d.getHours()}:${d.getMinutes()}:${d.getSeconds()}`,
        created_by: 1,
        status: 2,
      };
      Contact.store(contact, function (data) {
        const result = {
          contact: contact,
          status: true,
          message: "Cảm ơn bạn đã gửi lời nhận xét đến chúng tôi",
        };
        return res.status(200).json(result);
      });
    } catch (error) {
      const result = {
        contact: null,
        status: false,
        message: error.message,
      };
      return res.status(200).json(result);
    }
  },
  edit: (req, res) => {
    const id = req.params.id;
    const formBody = req.body;
    //Lấy dũ liệu form
    const contact = {
      user_id: formBody.user_id,
      name: formBody.name,
      email: formBody.email,
      phone: formBody.phone,
      title: formBody.title,
      content: formBody.content,
      reply_id: formBody.reply_id,
      status: formBody.status,
      created_at: "2000-2-2 10:22:11",
    };
    Contact.edit(contact, id, function (data) {
      //data thứ mà nó trả về
      console.log(data);
    });
  },
  remove: async (req, res) => {
    try {
      const id = req.params.id;
      await Contact.remove(id, function (contact) {
        const result = {
          contact: contact,
          status: true,
          message: "Xóa mẫu tin thành công!",
        };
        return res.status(200).json(result);
      });
    } catch (error) {
      const result = {
        contacts: null,
        status: false,
        message: error.message,
      };
      return res.status(200).json(result);
    }
  },
};

module.exports = ContactController;
