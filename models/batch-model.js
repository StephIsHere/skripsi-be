import { DataTypes } from "sequelize";
import sequelize from "../config/db.js";

const Batch = sequelize.define(
  'Batch', {
    id_batch: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
      allowNull: false
    }, 
    nama_batch: {
      type: DataTypes.STRING,
      allowNull: false
    },
    status: {
      type: DataTypes.BOOLEAN
    }, 
    tanggal_mulai: {
      type: DataTypes.DATE
    },
    tanggal_selesai: {
      type: DataTypes.DATE
    }
  }
)