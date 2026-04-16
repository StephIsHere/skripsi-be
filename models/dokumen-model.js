import { DataTypes } from "sequelize";
import sequelize from "../config/db.js";

const Dokumen = sequelize.define(
  'Dokumen',
  {
    id_dokumen: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
      allowNull: false
    },
    id_peserta: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    ktm: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    transkrip: {
      type: DataTypes.STRING,
      allowNull: false
    },
    cv: {
      type: DataTypes.STRING,
      allowNull: false
    },
    foto: {
      type: DataTypes.STRING,
      allowNull: false
    },
    motivation_letter : {
      type: DataTypes.STRING,
      allowNull: false
    }
  },
  {
    tableName: "dokumen",
  }
)

export default Dokumen;