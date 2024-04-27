const express = require("express");
const router = express.Router();
const ContactController = require("../controllers/ContactController");

router.get("/index", ContactController.index);
router.get("/show/:id", ContactController.show);
router.post("/store", ContactController.store);
router.put("/edit/:id", ContactController.edit);
router.delete("/remove/:id", ContactController.remove);

module.exports = router;
 