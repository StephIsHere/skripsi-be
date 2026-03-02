import "dotenv/config"
import sequelize from "./config/db.js";
import User from "./models/user-model.js";

try {
  await sequelize.authenticate();
  console.log("connection established")

  await sequelize.sync();

  const user = await User.findAll();

  console.log(user);
} catch (error) {
  console.error("unable to connect bzir")
}