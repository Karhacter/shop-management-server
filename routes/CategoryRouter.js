const express = require("express");
const router = express.Router();
const CategoryController = require("../controllers/CategoryController");

router.get("/index", CategoryController.index);
router.get("/show/:id", CategoryController.show);
router.post("/store", CategoryController.store);
router.put("/edit/:id", CategoryController.edit);
router.delete("/delete/:id", CategoryController.delete);

router.get("/list/:parentid", CategoryController.list);
router.get("/categorydetail/:slug/:limit", CategoryController.categorydetail);
module.exports = router;
