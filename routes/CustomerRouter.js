const express = require("express");
const router = express.Router();
const CustomerController = require("../controllers/CustomerController");

router.get("/index", CustomerController.index);
router.get("/show/:id", CustomerController.show);
router.post("/store", CustomerController.store);
router.put("/edit/:id", CustomerController.edit);
router.delete("/remove/:id", CustomerController.remove);


module.exports = router;
