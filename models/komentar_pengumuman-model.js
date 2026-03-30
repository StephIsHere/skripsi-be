import { DataTypes } from "sequelize";
import sequelize from "../config/db.js";
import User from "./user-model.js";
import Pengumuman from "./pengumuman-model.js";

const KomentarPengumuman = sequelize.define(
  "KomentarPengumuman", {
    id_komentar_pengumuman: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true,
  },

  id_pengumuman: {
    type: DataTypes.INTEGER,
    allowNull: false,
    references: {
      model: Pengumuman,
      key: "id_pengumuman",
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
    tableName: "komentar_pengumuman"
  }
)

export default KomentarPengumuman;