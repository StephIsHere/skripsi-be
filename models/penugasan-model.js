import { DataTypes } from "sequelize";
import sequelize from "../config/db.js";

const Penugasan = sequelize.define(
  'Penugasan', {
    id_penugasan: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
      allowNull: false
    }, 
    id_peserta: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    id_soal: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    id_so: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    id_user: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    status: {
      type: DataTypes.TEXT
    },
    tanggal_beri: {
      type: DataTypes.DATE
    },
    tanggal_kumpul: {
      type: DataTypes.DATE
    },
    file_pengumpulan: {
      type: DataTypes.TEXT
    }
  },
  {
    tableName: "penugasan",
  }
)

export default Penugasan;