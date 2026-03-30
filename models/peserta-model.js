import { DataTypes } from "sequelize";
import sequelize from "../config/db.js";

const Peserta = sequelize.define(
  'Peserta',
  {
    id_peserta: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
      allowNull: false
    },
    id_user: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    id_batch: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    status: {
      type: DataTypes.STRING,
      allowNull: false
    },
    tanggal_daftar: {
      type: DataTypes.DATE,
      allowNull: false
    },
  },
  {
    tableName: "peserta",
  }
)

export default Peserta;