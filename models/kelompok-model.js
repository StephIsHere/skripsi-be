import { DataTypes } from "sequelize";
import sequelize from "../config/db.js";

const Kelompok = sequelize.define(
  "Kelompok", {
    id_kelompok: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
      allowNull: false
    },
    nama_kelompok: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    id_batch: {
      type: DataTypes.INTEGER,
      allowNull: false,
    },
  },
  {
    tableName: "kelompok",
  }
);

export default Kelompok;