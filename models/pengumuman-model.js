import { DataTypes } from "sequelize";
import sequelize from "../config/db.js";

const Pengumuman = sequelize.define(
  'Pengumuman', {
  id_pengumuman: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
    allowNull: false
  },
  judul: {
    type: DataTypes.STRING,
    allowNull: false
  },
  isi: {
    type: DataTypes.TEXT('long')
  },
  tanggal_pengumuman: {
    type: DataTypes.DATE
  },
  id_batch: {
    type: DataTypes.INTEGER,
    allowNull: false
  }
},
  {
    tableName: "pengumuman",
  }
)

export default Pengumuman;