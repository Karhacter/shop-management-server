const express = require("express");
const router = express.Router();
const OrderController = require("../controllers/OrderController");

router.get("/index", OrderController.index);
router.get("/show/:id", OrderController.show);
router.post("/store", OrderController.store);
router.put("/edit/:id", OrderController.edit);
router.delete("/remove/:id", OrderController.remove);

module.exports = router;
