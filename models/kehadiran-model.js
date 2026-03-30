import { DataTypes } from "sequelize";
import sequelize from "../config/db.js";

const Kehadiran = sequelize.define(
  'Kehadiran', {
    id_kehadiran: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
      allowNull: false
    }, 
    id_peserta: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    laporan: {
      type: DataTypes.TEXT('long')
    },
    is_verified: {
      type: DataTypes.BOOLEAN
    },
    jam_datang: {
      type: DataTypes.DATE
    },
    jam_pulang: {
      type: DataTypes.DATE
    },
  },
  {
    tableName: "kehadiran",
  }
)

export default Kehadiran;