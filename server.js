import "dotenv/config"
import sequelize from "./config/db.js";
import Pengumuman from "./models/pengumuman-model.js";
import express from "express";
import userRoute from "./routes/user-route.js";
import pengumumanRoute from "./routes/pengumuman-route.js";
import cors from "cors";

const app = express();
app.use(express.json());
app.use(cors())

app.use("/api", userRoute);  
app.use("/api", pengumumanRoute);  

app.listen(3000, () =>{
  console.log("server is running")
})