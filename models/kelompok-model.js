import { DataTypes } from "sequelize";
import sequelize from "../config/db.js";

const Kelompok = sequelize.define(
  "Kelompok", {
    id_kelompok: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true,
  },

  id_peserta: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  }, {
    tableName: "kelompok"
  }
)

export default Kelompok;