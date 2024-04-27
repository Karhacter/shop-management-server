const Post = require("../models/Post");

const PostController = {
  index: (req, res) => {
    Post.getAll((data) => {
      if (data == null) {
        return res.status(200).json({
          posts: null,
          status: false,
          message: "Khong tim thay du lieu",
        });
      } else {
        return res.status(200).json({
          posts: data,
          status: true,
          message: "Da tim thay du lieu",
        });
      }
    });
  },
  show: (req, res) => {
    const id = req.params.id;
    Post.show(id, function (data) {
      if (data == null) {
        return res.status(200).json({
          post: null,
          status: false,
          message: "Khong tim thay du lieu",
        });
      } else {
        return res.status(200).json({
          post: data,
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
      image.mv("./assets/images/posts/" + image.name, function (err, result) {
        if (err) throw err;
      });
      let d = new Date();
      //Lấy dũ liệu form
      const post = {
        title: formBody.title,
        slug: formBody.slug,
        detail: formBody.detail,
        image: image.name,
        type: formBody.type,
        description: formBody.description,
        created_at: `${d.getFullYear()}-${d.getMonth()}-${d.getDay()} ${d.getHours()}:${d.getMinutes()}:${d.getSeconds()}`,
        created_by: 1,
        status: formBody.status,
      };
      await Post.store(post, function (data) {
        const result = {
          post: post,
          status: true,
          message: "Thêm dữ liệu thành công!",
        };
        return res.status(200).json(result);
      });
    } catch (error) {
      const result = {
        post: null,
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
    const post = {
      topic_id: formBody.topic_id,
      title: formBody.title,
      detail: formBody.detail,
      image: formBody.image,
      type: formBody.type,
      description: formBody.description,
      created_by: formBody.created_by,
      status: formBody.status,
      slug: "tran-duc-khanh",
      created_at: "2000-2-2 10:22:11",
    };
    Post.edit(post, id, function (data) {
      //data thứ mà nó trả về
      console.log(data);
    });
  },
  remove: async (req, res) => {
    try {
      const id = req.params.id;
      await Post.remove(id, function (post) {
        const result = {
          post: post,
          status: true,
          message: "Xóa mẫu tin thành công!",
        };
        return res.status(200).json(result);
      });
    } catch (error) {
      const result = {
        posts: null,
        status: false,
        message: error.message,
      };
      return res.status(200).json(result);
    }
  },
  list: (req, res) => {
    Post.getList((data) => {
      if (data == null) {
        return res.status(200).json({
          pages: null,
          status: false,
          message: "Khong tim thay du lieu",
        });
      } else {
        return res.status(200).json({
          pages: data,
          status: true,
          message: "Da tim thay du lieu",
        });
      }
    });
  },
  postdetail: async (req, res) => {
    try {
      const slug = req.params.slug;
      const limit = req.params.limit;
      await Post.getBySlug(slug, function (post) {
        if (post == null) {
          const result = {
            posts: null,
            status: false,
            message: "Không tìm thấy thông tin!",
          };
          return res.status(200).json(result);
        } else {
          Post.getListOther(post.topic_id, post.id, limit, function (posts) {
            const result = {
              post: post,
              posts: posts,
              status: true,
              message: "Tải dữ liệu thành công!",
            };
            return res.status(200).json(result);
          });
        }
      });
    } catch (error) {
      const result = {
        posts: null,
        status: false,
        message: error.message,
      };
      return res.status(200).json(result);
    }
  },
  pagestore: async (req, res) => {
    try {
      const formBody = req.body;
      let image = req.files.image;
      image.mv("./assets/images/posts/" + image.name, function (err, result) {
        if (err) throw err;
      });
      let d = new Date();
      //Lấy dũ liệu form
      const page = {
        title: formBody.title,
        slug: formBody.slug,
        detail: formBody.detail,
        image: image.name,
        type: formBody.type,
        description: formBody.description,
        created_at: `${d.getFullYear()}-${d.getMonth()}-${d.getDay()} ${d.getHours()}:${d.getMinutes()}:${d.getSeconds()}`,
        created_by: 1,
        status: formBody.status,
      };
      await Post.pagestore(page, function (data) {
        const result = {
          post: page,
          status: true,
          message: "Thêm dữ liệu thành công!",
        };
        return res.status(200).json(result);
      });
    } catch (error) {
      const result = {
        post: null,
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
      await Post.getListNew(limit, function (posts) {
        if (posts == null) {
          const result = {
            posts: null,
            status: false,
            message: "Không tìm thấy thông tin!",
          };
          return res.status(200).json(result);
        } else {
          const result = {
            posts: posts,
            status: true,
            message: "Tải dữ liệu thành công!",
          };
          return res.status(200).json(result);
        }
      });
    } catch (error) {
      const result = {
        posts: null,
        status: false,
        message: error.message,
      };
      return res.status(200).json(result);
    }
  },
};

module.exports = PostController;
