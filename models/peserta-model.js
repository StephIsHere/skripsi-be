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
    id_kelompok: {
      type: DataTypes.INTEGER,
      allowNull: true
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
    indexes: [
      {
        unique: true,
        fields: ["id_user", "id_batch"],
        name: "unique_user_per_batch",
      },
    ],
  }
);

export default Peserta;