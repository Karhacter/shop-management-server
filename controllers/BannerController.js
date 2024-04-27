const Banner = require("../models/Banner");

const BannerController = {
  index: (req, res) => {
    Banner.getAll((data) => {
      if (data == null) {
        return res.status(200).json({
          banners: null,
          status: false,
          message: "Khong tim thay du lieu",
        });
      } else {
        return res.status(200).json({
          banners: data,
          status: true,
          message: "Da tim thay du lieu",
        });
      }
    });
  },
  show: (req, res) => {
    const id = req.params.id;
    Banner.show(id, function (data) {
      if (data == null) {
        return res.status(200).json({
          banner: null,
          status: false,
          message: "Khong tim thay du lieu",
        });
      } else {
        return res.status(200).json({
          banner: data,
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
      image.mv("./assets/images/sliders/" + image.name, function (err, result) {
        if (err) throw err;
      });
      let d = new Date();
      //Lấy dũ liệu form
      const banner = {
        name: formBody.name,
        link: formBody.link,
        image: image.name,
        position: "slideshow",
        created_at: `${d.getFullYear()}-${d.getMonth()}-${d.getDay()} ${d.getHours()}:${d.getMinutes()}:${d.getSeconds()}`,
        created_by: 1,
        status: formBody.status,
      };
      await Banner.store(banner, function (data) {
        const result = {
          banner: banner,
          status: true,
          message: "Thêm dữ liệu thành công!",
        };
        return res.status(200).json(result);
      });
    } catch (error) {
      const result = {
        banner: null,
        status: false,
        message: error.message,
      };
      return res.status(200).json(result);
    }
  },
  edit: async (req, res) => {
    try {
      const id = req.params.id;
      const bodyData = req.body;
      //image
      let image = req.files.image;
      image.mv("./assets/images/sliders/" + image.name, function (err, result) {
        if (err) throw err;
      });
      let d = new Date();
      const banner = {
        name: bodyData.name,
        link: bodyData.link,
        sort_order: bodyData.sort_order,
        image: image.name,
        position: bodyData.description,
        updated_at: `${d.getFullYear()}-${d.getMonth()}-${d.getDay()} ${d.getHours()}:${d.getMinutes()}:${d.getSeconds()}`,
        updated_by: 1,
        status: bodyData.status,
      };
      await Banner.edit(banner, id, function (data) {
        const result = {
          banner: banner,
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
      await Banner.delete(id, function (banner) {
        const result = {
          banner: banner,
          status: true,
          message: "Xóa mẫu tin thành công!",
        };
        return res.status(200).json(result);
      });
    } catch (error) {
      const result = {
        banners: null,
        status: false,
        message: error.message,
      };
      return res.status(200).json(result);
    }
  },
  list: async (req, res) => {
    try {
      const position = req.params.position;
      await Banner.getList(position, function (banners) {
        if (banners == null) {
          const result = {
            banners: null,
            status: false,
            message: "Không tìm thấy thông tin!",
          };
          return res.status(200).json(result);
        } else {
          const result = {
            banners: banners,
            status: true,
            message: "Tải dữ liệu thành công!",
          };
          return res.status(200).json(result);
        }
      });
    } catch (error) {
      const result = {
        banners: null,
        status: false,
        message: error.message,
      };
      return res.status(200).json(result);
    }
  },
};

module.exports = BannerController;
