const Menu = require("../models/Menu");

const MenuController = {
  index: (req, res) => {
    Menu.getAll((data) => {
      if (data == null) {
        return res.status(200).json({
          menus: null,
          status: false,
          message: "Khong tim thay du lieu",
        });
      } else {
        return res.status(200).json({
          menus: data,
          status: true,
          message: "Da tim thay du lieu",
        });
      }
    });
  },
  show: (req, res) => {
    const id = req.params.id;
    Menu.show(id, function (data) {
      if (data == null) {
        return res.status(200).json({
          menu: null,
          status: false,
          message: "Khong tim thay du lieu",
        });
      } else {
        return res.status(200).json({
          menu: data,
          status: true,
          message: "Tai du lieu thanh cong",
        });
      }
    });
  },
  store: (req, res) => {
    const formBody = req.body;
    //Lấy dũ liệu form
    const menu = {
      name: formBody.name,
      link: formBody.link,
      table_id: formBody.table_id,
      sort_order: formBody.sort_order,
      position: formBody.position,
      type: formBody.type,
      parent_id: formBody.parent_id,
      created_by: formBody.created_by,
      status: formBody.status,
      created_at: "2000-2-2 10:22:11",
    };
    Menu.store(menu, function (data) {
      //data thứ mà nó trả về
      console.log(data);
    });
  },
  edit: (req, res) => {
    const id = req.params.id;
    const formBody = req.body;
    //Lấy dũ liệu form
    const menu = {
      name: formBody.name,
      link: formBody.link,
      table_id: formBody.table_id,
      sort_order: formBody.sort_order,
      position: formBody.position,
      type: formBody.type,
      parent_id: formBody.parent_id,
      created_by: formBody.created_by,
      status: formBody.status,
      created_at: "2000-2-2 10:22:11",
    };
    Menu.edit(menu, id, function (data) {
      //data thứ mà nó trả về
      console.log(data);
    });
  },
  remove: (req, res) => {
    const id = req.params.id;
    Menu.remove(id, function (data) {
      console.log(data);
    });
  },

  list: async (req, res) => {
    try {
      const parentid = req.params.parentid;
      const limit = req.params.limit;
      await Menu.getList(parentid, limit, function (menus) {
        if (menus == null) {
          const result = {
            menus: null,
            status: false,
            message: "Không tìm thấy thông tin!",
          };
          return res.status(200).json(result);
        } else {
          const result = {
            menus: menus,
            status: true,
            message: "Tải dữ liệu thành công!",
          };
          return res.status(200).json(result);
        }
      });
    } catch (error) {
      const result = {
        menus: null,
        status: false,
        message: error.message,
      };
      return res.status(200).json(result);
    }
  },
};

module.exports = MenuController;
