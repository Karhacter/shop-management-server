const express = require("express");
const router = express.Router();
const TopicController = require("../controllers/TopicController");

router.get("/index", TopicController.index);
router.get("/list/:page/:limit", TopicController.list);
router.get("/show/:id", TopicController.show);
router.post("/store", TopicController.store);
router.put("/edit/:id", TopicController.edit);
router.delete("/remove/:id", TopicController.remove);


module.exports = router;
