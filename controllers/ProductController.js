const Product = require("../models/Product");

const ProductController = {
  index: (req, res) => {
    Product.getAll((data) => {
      if (data == null) {
        return res.status(200).json({
          products: null,
          status: false,
          message: "Không tìm thấy dữ liệu",
        });
      } else {
        return res.status(200).json({
          products: data,
          status: true,
          message: "Tải dữ liệu thành công",
        });
      }
    });
  },
  list: async (req, res) => {
    try {
      const page = req.params.page;
      const limit = req.params.limit;
      //Xử lý page
      const offset = (page - 1) * limit;
      //
      await Product.getList(limit, offset, function (products) {
        if (products == null) {
          const result = {
            products: null,
            status: false,
            message: "Không tìm thấy thông tin!",
          };
          return res.status(200).json(result);
        } else {
          const result = {
            products: products,
            status: true,
            message: "Tải dữ liệu thành công!",
          };
          return res.status(200).json(result);
        }
      });
    } catch (error) {
      const result = {
        products: null,
        status: false,
        message: error.message,
      };
      return res.status(200).json(result);
    }
  },

  show: (req, res) => {
    const id = req.params.id;
    Product.show(id, function (data) {
      if (data == null) {
        return res.status(200).json({
          product: null,
          status: false,
          message: "Khong tim thay du lieu",
        });
      } else {
        return res.status(200).json({
          product: data,
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
      image.mv(
        "./assets/images/products/" + image.name,
        function (err, result) {
          if (err) throw err;
        }
      );
      let d = new Date();
      //Lấy dũ liệu form
      const product = {
        category_id: formBody.category_id,
        brand_id: formBody.brand_id,
        name: formBody.name,
        slug: formBody.slug,
        image: image.name,
        detail: formBody.detail,
        qty: formBody.qty,
        price: formBody.price,
        pricesale: formBody.pricesale,
        description: formBody.description,
        created_at: `${d.getFullYear()}-${d.getMonth()}-${d.getDay()} ${d.getHours()}:${d.getMinutes()}:${d.getSeconds()}`,
        created_by: 1,
        status: formBody.status,
      };
      await Product.store(product, function (data) {
        const result = {
          product: product,
          status: true,
          message: "Thêm dữ liệu thành công!",
        };
        return res.status(200).json(result);
      });
    } catch (error) {
      const result = {
        product: null,
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
      image.mv(
        "./assets/images/products/" + image.name,
        function (err, result) {
          if (err) throw err;
        }
      );
      let d = new Date();
      const product = {
        name: bodyData.name,
        slug: bodyData.slug,
        category_id: bodyData.category_id,
        brand_id: bodyData.brand_id,
        image: image.name,
        detail: bodyData.detail,
        qty: bodyData.qty,
        price: bodyData.price,
        pricesale: bodyData.pricesale,
        description: bodyData.description,
        updated_at: `${d.getFullYear()}-${d.getMonth()}-${d.getDay()} ${d.getHours()}:${d.getMinutes()}:${d.getSeconds()}`,
        updated_by: 1,
        status: bodyData.status,
      };
      await Product.edit(product, id, function (data) {
        const result = {
          product: product,
          status: true,
          message: "Cập nhật dữ liệu thành công!",
        };
        return res.status(200).json(result);
      });
    } catch (error) {
      const result = {
        product: null,
        status: false,
        message: error.message,
      };
      return res.status(200).json(result);
    }
  },
  remove: async (req, res) => {
    try {
      const id = req.params.id;
      await Product.remove(id, function (product) {
        const result = {
          product: product,
          status: true,
          message: "Xóa mẫu tin thành công!",
        };
        return res.status(200).json(result);
      });
    } catch (error) {
      const result = {
        products: null,
        status: false,
        message: error.message,
      };
      return res.status(200).json(result);
    }
  },
  listnew: async (req, res) => {
    try {
      const limit = req.params.limit;
      //
      await Product.getListNew(limit, function (products) {
        if (products == null) {
          const result = {
            products: null,
            status: false,
            message: "Không tìm thấy thông tin!",
          };
          return res.status(200).json(result);
        } else {
          const result = {
            products: products,
            status: true,
            message: "Tải dữ liệu thành công!",
          };
          return res.status(200).json(result);
        }
      });
    } catch (error) {
      const result = {
        products: null,
        status: false,
        message: error.message,
      };
      return res.status(200).json(result);
    }
  },
  list_category: async (req, res) => {
    try {
      const categoryid = req.params.categoryid;
      const limit = req.params.limit;
      await Product.getListByCategory(categoryid, limit, function (products) {
        if (products == null) {
          const result = {
            products: null,
            status: false,
            message: "Không tìm thấy thông tin!",
          };
          return res.status(200).json(result);
        } else {
          const result = {
            products: products,
            status: true,
            message: "Tải dữ liệu thành công!",
          };
          return res.status(200).json(result);
        }
      });
    } catch (error) {
      const result = {
        products: null,
        status: false,
        message: error.message,
      };
      return res.status(200).json(result);
    }
  },
  list_brand: async (req, res) => {
    try {
      const brandid = req.params.brandid;
      const limit = req.params.limit;
      await Product.getListByBrand(brandid, limit, function (products) {
        if (products == null) {
          const result = {
            products: null,
            status: false,
            message: "Không tìm thấy thông tin!",
          };
          return res.status(200).json(result);
        } else {
          const result = {
            products: products,
            status: true,
            message: "Tải dữ liệu thành công!",
          };
          return res.status(200).json(result);
        }
      });
    } catch (error) {
      const result = {
        products: null,
        status: false,
        message: error.message,
      };
      return res.status(200).json(result);
    }
  },
  list_product_category: async (req, res) => {
    try {
      const categoryid = req.params.categoryid;
      const page = req.params.page;
      const limit = req.params.limit;
      //Xử lý page
      let offset = (page - 1) * limit;
      //
      await Product.getListProductCategory(
        categoryid,
        limit,
        offset,
        function (products) {
          if (products == null) {
            const result = {
              products: null,
              status: false,
              message: "Không tìm thấy thông tin!",
            };
            return res.status(200).json(result);
          } else {
            const result = {
              products: products,
              status: true,
              message: "Tải dữ liệu thành công!",
            };
            return res.status(200).json(result);
          }
        }
      );
    } catch (error) {
      const result = {
        products: null,
        status: false,
        message: error.message,
      };
      return res.status(200).json(result);
    }
  },
  productdetail: async (req, res) => {
    try {
      const slug = req.params.slug;
      const limit = req.params.limit;
      await Product.getBySlug(slug, function (product) {
        if (product == null) {
          const result = {
            product: null,
            status: false,
            message: "Không tìm thấy thông tin!",
          };
          return res.status(200).json(result);
        } else {
          Product.getListProductOther(
            product.category_id,
            product.id,
            limit,
            function (products) {
              const result = {
                product: product,
                products: products,
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
        products: null,
        status: false,
        message: error.message,
      };
      return res.status(200).json(result);
    }
  },
};

module.exports = ProductController;
