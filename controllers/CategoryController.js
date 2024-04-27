const Category = require("../models/Category");

const CategoryController = {
  index: (req, res) => {
    Category.getAll((data) => {
      if (data == null) {
        return res.status(200).json({
          categorys: null,
          status: false,
          message: "Khong tim thay du lieu",
        });
      } else {
        return res.status(200).json({
          categorys: data,
          status: true,
          message: "Da tim thay du lieu",
        });
      }
    });
  },
  show: (req, res) => {
    const id = req.params.id;
    Category.show(id, function (data) {
      if (data == null) {
        return res.status(200).json({
          category: null,
          status: false,
          message: "Khong tim thay du lieu",
        });
      } else {
        return res.status(200).json({
          category: data,
          status: true,
          message: "Tai du lieu thanh cong",
        });
      }
    });
  },
  store: async (req, res) => {
    const formBody = req.body;
    let image = req.files.image;
    image.mv("./assets/images/categorys/" + image.name, function (err, result) {
      if (err) throw err;
    });
    let d = new Date();
    //Lấy dũ liệu form
    const category = {
      name: formBody.name,
      parent_id: formBody.parent_id,
      image: image.name,
      description: formBody.description,
      status: formBody.status,
      slug: formBody.slug,
      created_at: `${d.getFullYear()}-${d.getMonth()}-${d.getDay()} ${d.getHours()}:${d.getMinutes()}:${d.getSeconds()}`,
      created_by: 1,
    };
    await Category.store(category, function (data) {
      const result = {
        category: category,
        status: true,
        message: "Thêm dữ liệu thành công!",
      };
      return res.status(200).json(result);
    });
  },
  edit: async (req, res) => {
    try {
      const id = req.params.id;
      let bodyData = req.body;
      //image
      let image = req.files.image;
      image.mv(
        "./assets/images/categorys/" + image.name,
        function (err, result) {
          if (err) throw err;
        }
      );
      let d = new Date();
      //object data to store
      const category = {
        name: bodyData.name,
        slug: bodyData.slug,
        description: bodyData.description,
        image: image.name,
        parent_id: bodyData.parent_id,
        status: bodyData.status,
        updated_by: 1,
        updated_at: `${d.getFullYear()}-${d.getMonth()}-${d.getDay()} ${d.getHours()}:${d.getMinutes()}:${d.getSeconds()}`,
      };
      await Category.edit(category, id, function (data) {
        const result = {
          category: category,
          status: true,
          message: "Cập nhật dữ liệu thành công!",
        };
        return res.status(200).json(result);
      });
    } catch (error) {
      const result = {
        category: null,
        status: false,
        message: error.message,
      };
      return res.status(200).json(result);
    }
  },

  delete: async (req, res) => {
    try {
      const id = req.params.id;
      await Category.delete(id, function (category) {
        const result = {
          category: category,
          status: true,
          message: "Xóa mẫu tin thành công!",
        };
        return res.status(200).json(result);
      });
    } catch (error) {
      const result = {
        categorys: null,
        status: false,
        message: error.message,
      };
      return res.status(200).json(result);
    }
  },
  list: async (req, res) => {
    try {
      const parentid = req.params.parentid;
      await Category.getList(parentid, function (categorys) {
        if (categorys == null) {
          const result = {
            categorys: null,
            status: false,
            message: "Không tìm thấy thông tin!",
          };
          return res.status(200).json(result);
        } else {
          const result = {
            categorys: categorys,
            status: true,
            message: "Tải dữ liệu thành công!",
          };
          return res.status(200).json(result);
        }
      });
    } catch (error) {
      const result = {
        categorys: null,
        status: false,
        message: error.message,
      };
      return res.status(200).json(result);
    }
  },
  categorydetail: async (req, res) => {
    try {
      const slug = req.params.slug;
      const limit = req.params.limit;
      await Category.getBySlug(slug, function (category) {
        if (category == null) {
          const result = {
            categorys: null,
            status: false,
            message: "Không tìm thấy thông tin!",
          };
          return res.status(200).json(result);
        } else {
          Category.getListOther(
            category.sort_order,
            category.id,
            limit,
            function (categorys) {
              const result = {
                category: category,
                categorys: categorys,
                status: true,
                message: "Tải dữ liệu thành công!",
              };
              return res.status(200).json(result);
            }
          );
        }
      });
    } catch (error) {
      const result = {
        categorys: null,
        status: false,
        message: error.message,
      };
      return res.status(200).json(result);
    }
  },
};

module.exports = CategoryController;
