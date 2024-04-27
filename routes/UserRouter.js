const express = require("express");
const router = express.Router();
const UserController = require("../controllers/UserController");

router.get("/index", UserController.index);
router.get("/show/:id", UserController.show);
router.post("/store", UserController.store);
router.put("/edit/:id", UserController.edit);
router.delete("/remove/:id", UserController.remove);

module.exports = router;
 