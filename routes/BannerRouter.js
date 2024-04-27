const express = require("express");
const router = express.Router();
const BannerController = require("../controllers/BannerController");

router.get("/index", BannerController.index);
router.get("/show/:id", BannerController.show);
router.post("/store", BannerController.store);
router.put("/edit/:id", BannerController.edit);
router.delete("/delete/:id", BannerController.delete);

router.get("/list/:position", BannerController.list);

module.exports = router;
