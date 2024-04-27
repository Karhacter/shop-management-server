const express = require("express");
const router = express.Router();
const PostController = require("../controllers/PostController");

router.get("/index", PostController.index);
router.get("/show/:id", PostController.show);
router.post("/store", PostController.store);
router.put("/edit/:id", PostController.edit);
router.delete("/remove/:id", PostController.remove);

router.get("/list", PostController.list);
router.get("/postdetail/:slug/:limit", PostController.postdetail);
router.post("/pagestore", PostController.pagestore);

router.get("/listnew/:limit", PostController.listnew);
module.exports = router;
