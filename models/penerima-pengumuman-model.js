import { DataTypes } from "sequelize";
import sequelize from "../config/db.js";
import User from "./user-model.js";
import Pengumuman from "./pengumuman-model.js";

const PenerimaPengumuman = sequelize.define(
  "PenerimaPengumuman", {
    id_penerima_pengumuman: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true,
  },

  id_pengumuman: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },

  id_user: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  }, {
    tableName: "penerima_pengumuman"
  }
)

export default PenerimaPengumuman;