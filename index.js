const express = require("express");
const app = express();

const PORT = process.env.PORT || 3000;

app.get("/", function(req, res) {
  res.json("Hello Docker");
});

app.listen(PORT, () => {
  console.log(`server is listenning on port ${PORT}`);
});
