import { DataTypes } from "sequelize";
import sequelize from "../config/db.js";

const Log = sequelize.define("Log", {
  id_log: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true,
  },
  id_user: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  aksi: {
    type: DataTypes.ENUM("CREATE", "UPDATE", "DELETE", "UPLOAD"),
    allowNull: false,
  },
  entitas: {
    type: DataTypes.STRING(50),
    allowNull: false,
  },
  id_entitas: {
    type: DataTypes.INTEGER,
    allowNull: true,
  },
  deskripsi: {
    type: DataTypes.STRING(255),
    allowNull: true,
  },
}, {
  tableName: "log",
  timestamps: true,
  updatedAt: false, 
});

export default Log;