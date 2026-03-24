import "dotenv/config"
import express from "express";
import cors from "cors";

import sequelize from "./config/db.js";

import userRoute from "./routes/user-route.js";
import pengumumanRoute from "./routes/pengumuman-route.js";
import batchRoute from "./routes/batch-route.js";
import soalRoute from "./routes/soal-route.js"
import pesertaRoute from "./routes/peserta-route.js"

const app = express();

app.use(express.json());
app.use(cors());

app.use("/api", userRoute);
app.use("/api", pengumumanRoute);
app.use("/api", batchRoute);
app.use("/api", soalRoute);
app.use("/api", pesertaRoute);

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