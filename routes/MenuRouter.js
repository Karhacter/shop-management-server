const express = require("express");
const router = express.Router();
const MenuController = require("../controllers/MenuController");

router.get("/index", MenuController.index);
router.get("/show/:id", MenuController.show);
router.post("/store", MenuController.store);
router.put("/edit/:id", MenuController.edit);
router.delete("/remove/:id", MenuController.remove);

router.get("/list/:parentid/:limit", MenuController.list);

module.exports = router;
