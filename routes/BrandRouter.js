const express = require("express");
const router = express.Router();
const BrandController = require("../controllers/BrandController");

router.get("/index", BrandController.index);
router.get("/show/:id", BrandController.show);
router.post("/store", BrandController.store);
router.put("/edit/:id", BrandController.edit);
router.delete("/delete/:id", BrandController.delete);
router.get("/branddetail/:slug/:limit", BrandController.branddetail);

module.exports = router;
