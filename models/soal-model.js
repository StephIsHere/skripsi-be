import { DataTypes } from "sequelize";
import sequelize from "../config/db.js";

const Soal = sequelize.define(
  'Soal', {
    id_soal: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
      allowNull: false
    }, 
    judul: {
      type: DataTypes.STRING,
      allowNull: false
    },
    deskripsi: {
      type: DataTypes.TEXT('long')
    },
    bobot: {
      type: DataTypes.INTEGER
    }
  },
  {
    tableName: "soal",
  }
)

export default Soal;