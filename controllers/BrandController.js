const Brand = require("../models/Brand");

const BrandController = {
  index: (req, res) => {
    Brand.getAll((data) => {
      if (data == null) {
        return res.status(200).json({
          brands: null,
          status: false,
          message: "Khong tim thay du lieu",
        });
      } else {
        return res.status(200).json({
          brands: data,
          status: true,
          message: "Da tim thay du lieu",
        });
      }
    });
  },
  show: (req, res) => {
    const id = req.params.id;
    Brand.show(id, function (data) {
      if (data == null) {
        return res.status(200).json({
          brand: null,
          status: false,
          message: "Khong tim thay du lieu",
        });
      } else {
        return res.status(200).json({
          brand: data,
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
      image.mv("./assets/images/brands/" + image.name, function (err, result) {
        if (err) throw err;
      });
      let d = new Date();
      //Lấy dũ liệu form
      const brand = {
        name: formBody.name,
        slug: formBody.slug,
        sort_order: 0,
        image: image.name,
        description: formBody.description,
        status: formBody.status,
        created_at: `${d.getFullYear()}-${d.getMonth()}-${d.getDay()} ${d.getHours()}:${d.getMinutes()}:${d.getSeconds()}`,
        created_by: 1,
      };
      await Brand.store(brand, function (data) {
        //data thứ mà nó trả về
        const result = {
          brand: brand,
          status: true,
          message: "Thêm dữ liệu thành công!",
        };
        return res.status(200).json(result);
      });
    } catch (error) {
      const result = {
        brand: null,
        status: false,
        message: error.message,
      };
      return res.status(200).json(result);
    }
  },
  edit: async (req, res) => {
    try {
      const id = req.params.id;
      let bodyData = req.body;
      //image
      let image = req.files.image;
      image.mv("./assets/images/brands/" + image.name, function (err, result) {
        if (err) throw err;
      });
      let d = new Date();
      //object data to store
      const data = {
        name: bodyData.name,
        slug: bodyData.slug,
        description: bodyData.description,
        sort_order: 0,
        image: image.name,
        status: bodyData.status,
        updated_by: 1,
        updated_at: `${d.getFullYear()}-${d.getMonth()}-${d.getDay()} ${d.getHours()}:${d.getMinutes()}:${d.getSeconds()}`,
      };
      await Brand.edit(data, id, function (brand) {
        const result = {
          brand: data,
          status: true,
          message: "Cập nhật dữ liệu thành công!",
        };
        return res.status(200).json(result);
      });
    } catch (error) {
      const result = {
        brand: null,
        status: false,
        message: error.message,
      };
      return res.status(200).json(result);
    }
  },

  delete: async (req, res) => {
    try {
      const id = req.params.id;
      await Brand.delete(id, function (brand) {
        const result = {
          brand: brand,
          status: true,
          message: "Xóa mẫu tin thành công!",
        };
        return res.status(200).json(result);
      });
    } catch (error) {
      const result = {
        brands: null,
        status: false,
        message: error.message,
      };
      return res.status(200).json(result);
    }
  },
  branddetail: async (req, res) => {
    try {
      const slug = req.params.slug;
      const limit = req.params.limit;
      await Brand.getBySlug(slug, function (brand) {
        if (brand == null) {
          const result = {
            brands: null,
            status: false,
            message: "Không tìm thấy thông tin!",
          };
          return res.status(200).json(result);
        } else {
          Brand.getListOther(
            brand.sort_order,
            brand.id,
            limit,
            function (brands) {
              const result = {
                brand: brand,
                brands: brands,
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
        brands: null,
        status: false,
        message: error.message,
      };
      return res.status(200).json(result);
    }
  },
};

module.exports = BrandController;
