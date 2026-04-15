import "dotenv/config"
import express from "express";
import cors from "cors";

import sequelize from "./config/db.js";
import generateKehadiranCron from "./cron/generateKehadiran.js"

import userRoute from "./routes/user-route.js";
import pengumumanRoute from "./routes/pengumuman-route.js";
import batchRoute from "./routes/batch-route.js";
import soalRoute from "./routes/soal-route.js"
import pesertaRoute from "./routes/peserta-route.js"
import komentarPengumumanRoute from "./routes/komentar-pengumuman-route.js"
import kehadiranRoute from "./routes/kehadiran-route.js"
import penugasanRoute from "./routes/penugasan-route.js"
import sistemOperasiRoute from "./routes/sistem-operasi-route.js"
import komentarTugasRoute from "./routes/komentar-tugas-route.js"
import tinyMceRoute from "./routes/tinymce-route.js";
import dokumenRoute from "./routes/dokumen-route.js"

import "./config/relation.js"; 

const app = express();

generateKehadiranCron();

app.use(express.json());
app.use(cors());

app.use("/api", userRoute);
app.use("/api", pengumumanRoute);
app.use("/api", batchRoute);
app.use("/api", soalRoute);
app.use("/api", pesertaRoute);
app.use("/api", komentarPengumumanRoute);
app.use("/api", kehadiranRoute);
app.use("/api", penugasanRoute);
app.use("/api", sistemOperasiRoute);
app.use("/api", komentarTugasRoute);
app.use("/api", tinyMceRoute);
app.use("/api", dokumenRoute);
app.use("/uploads", express.static("public/uploads"));

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