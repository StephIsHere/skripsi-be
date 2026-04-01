import { DataTypes } from "sequelize";
import sequelize from "../config/db.js";
import User from "./user-model.js";
import Penugasan from "./penugasan-model.js";

const KomentarTugas = sequelize.define(
  "KomentarTugas", {
    id_komentar_tugas: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true,
  },

  id_penugasan: {
    type: DataTypes.INTEGER,
    allowNull: false,
    references: {
      model: Penugasan,
      key: "id_penugasan",
    },
    onDelete: "CASCADE",
  },

  id_user: {
    type: DataTypes.INTEGER,
    allowNull: false,
    references: {
      model: User,
      key: "id_user",
    },
    onDelete: "CASCADE",
  },
  isi_komentar: {
    type: DataTypes.TEXT('long'),
    allowNull: false
  }
  }, {
    tableName: "komentar_tugas"
  }
)

export default KomentarTugas;