import { DataTypes } from "sequelize";
import sequelize from "../config/db.js";

const SistemOperasi = sequelize.define(
  'SistemOperasi', {
    id_so: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
      allowNull: false
    }, 
    nama: {
      type: DataTypes.STRING,
      allowNull: false
    },
    bobot: {
      type: DataTypes.INTEGER
    }
  },
  {
    tableName: "sistem_operasi",
  }
)

export default SistemOperasi;