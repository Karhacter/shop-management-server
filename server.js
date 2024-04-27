const express = require("express");
const app = express();
const apiRoutes = require("./routes");
const port = 5000;
const fileUpload = require("express-fileupload");
const bodyParser = require("body-parser");
const cors = require("cors");
const path = require("path");

app.use("/assets", express.static(path.join(__dirname, "/assets")));

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));

app.use(
  fileUpload({
    useTempFiles: true,
    tempFileDir: "/assets/",
  })
);

app.use(cors());
apiRoutes(app);

app.listen(port, () => {
  console.log(`port on ${port}`);
});
