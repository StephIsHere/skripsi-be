import { DataTypes } from "sequelize";
import sequelize from "../config/db.js";

const User = sequelize.define(
  'User',
  {
    id_user: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
      allowNull: false
    },
    nama: {
      type: DataTypes.STRING,
      allowNull: false
    },
    email: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        isEmail: true
      },
    },
    google_id: {
      type: DataTypes.STRING,
      allowNull: true,
      unique: true,
    },
    foto: {
      type: DataTypes.STRING,
      allowNull: true,
    },
    role: {
      type: DataTypes.STRING,
      allowNull: false
    },
    nomor_identitas: {
      type: DataTypes.STRING,
      allowNull: true
    }
  },
  {
    tableName: "users",
  }
)

export default User;