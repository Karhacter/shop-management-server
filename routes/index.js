const CategoryRouter = require("./CategoryRouter");
const ProductRouter = require("./ProductRouter");
const BrandRouter = require("./BrandRouter");
const BannerRouter = require("./BannerRouter");
const ContactRouter = require("./ContactRouter");
const MenuRouter = require("./MenuRouter");
const OrderRouter = require("./OrderRouter");
const PostRouter = require("./PostRouter");
const TopicRouter = require("./TopicRouter");
const UserRouter = require("./UserRouter");
const CustomerRouter = require("./CustomerRouter");

const router = (app) => {
  app.use("/api/category", CategoryRouter);
  app.use("/api/product", ProductRouter);
  app.use("/api/brand", BrandRouter);
  app.use("/api/banner", BannerRouter);
  app.use("/api/contact", ContactRouter);
  app.use("/api/menu", MenuRouter);
  app.use("/api/order", OrderRouter);
  app.use("/api/post", PostRouter);
  app.use("/api/user", UserRouter);
  app.use("/api/topic", TopicRouter);
  app.use("/api/customer", CustomerRouter);
};
module.exports = router;
