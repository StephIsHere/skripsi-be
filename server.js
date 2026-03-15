import "dotenv/config"
import sequelize from "./config/db.js";
import Pengumuman from "./models/pengumuman-model.js";
import express from "express";
import router from "./routes/user-route.js";

const app = express();
app.use(express.json());
// try {
//   await sequelize.authenticate();
//   console.log("connection established")

//   await sequelize.sync();

//   const user = await Pengumuman.findAll();

//   console.log(Pengumuman);
// } catch (error) {
//   console.error("unable to connect bzir")
// }

app.use("/api", router);

app.listen(3000, () =>{
  console.log("server is running")
})