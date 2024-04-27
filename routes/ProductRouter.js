const express = require("express");
const ProductController = require("../controllers/ProductController");
const router = express.Router();

router.get("/index", ProductController.index);
router.get("/list/:page/:limit", ProductController.list);
router.get("/show/:id", ProductController.show);
router.post("/store", ProductController.store);
router.put("/edit/:id", ProductController.edit);
router.delete("/remove/:id", ProductController.remove);

router.get("/listnew/:limit", ProductController.listnew);
router.get(
  "/list_category/:categoryid/:limit",
  ProductController.list_category
);
router.get("/list_brand/:brandid/:limit", ProductController.list_brand);
router.get(
  "/list_product_category/:categoryid/:page/:limit",
  ProductController.list_product_category
);
router.get("/productdetail/:slug/:limit", ProductController.productdetail);

module.exports = router;
