import "dotenv/config"
import express from "express";
import cors from "cors";

import sequelize from "./config/db.js";

import userRoute from "./routes/user-route.js";
import pengumumanRoute from "./routes/pengumuman-route.js";
import batchRoute from "./routes/batch-route.js";

const app = express();

app.use(express.json());
app.use(cors());

app.use("/api", userRoute);
app.use("/api", pengumumanRoute);
app.use("/api", batchRoute);

sequelize.sync({ alter: true })
  .then(() => {
    console.log("Database synced");

    app.listen(3000, () => {
      console.log("server is running on http://localhost:3000");
    });
  })
  .catch((err) => {
    console.error("Failed to sync database:", err);
  });