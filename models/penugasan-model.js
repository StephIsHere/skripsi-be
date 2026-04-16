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
    allowNull: true
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
  id_kelompok: {
    type: DataTypes.INTEGER,
    allowNull: true
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
    validate: {
      pesertaOrKelompok() {
        if (!this.id_peserta && !this.id_kelompok) {
          throw new Error("id_peserta atau id_kelompok wajib diisi");
        }
        if (this.id_peserta && this.id_kelompok) {
          throw new Error("id_peserta dan id_kelompok tidak boleh terisi bersamaan");
        }
      },
    },
  }
)

export default Penugasan;