import Batch from "../models/batch-model.js";
import Pengumuman from "../models/pengumuman-model.js";
import Peserta from "../models/peserta-model.js";
import User from "../models/user-model.js";
import PenerimaPengumuman from "../models/penerima-pengumuman-model.js";
import KomentarPengumuman from "../models/komentar_pengumuman-model.js";
import Kehadiran from "../models/kehadiran-model.js";


// relasi batch - pengumuman
Batch.hasMany(Pengumuman, {
  foreignKey: "id_batch"
});

Pengumuman.belongsTo(Batch, {
  foreignKey: "id_batch"
});

// relasi peserta - batch
Batch.hasMany(Peserta, {
  foreignKey: "id_batch"
})

Peserta.belongsTo(Batch, {
  foreignKey: "id_batch"
})

// relasi peserta - user
User.hasMany(Peserta, {
  foreignKey: "id_user"
})

Peserta.belongsTo(User, {
  foreignKey: "id_user"
})

// relasi pengumuman - user
User.hasMany(Pengumuman, {
  foreignKey: "id_user",
  as: "pengumuman_dibuat"
})

Pengumuman.belongsTo(User,{
  foreignKey: "id_user",
  as: "pembuat"
})

// relasi pengumuman - penerima pengumuman - user
Pengumuman.belongsToMany(User, {
  through: PenerimaPengumuman, 
  foreignKey: "id_pengumuman",
  onDelete: "CASCADE",
  as: "penerima"
})

User.belongsToMany(Pengumuman, {
  through: PenerimaPengumuman,
  foreignKey: "id_user",
  onDelete: "CASCADE",
  as: "pengumuman_diterima"
})

// relasi pengumuman - komentar pengumuman
Pengumuman.hasMany(KomentarPengumuman, {
  foreignKey: "id_pengumuman",
  onDelete: "CASCADE"
})

KomentarPengumuman.belongsTo(Pengumuman, {
  foreignKey: "id_pengumuman"
})

// relasi user - komentar pengumuman 
User.hasMany(KomentarPengumuman, {
  foreignKey: "id_user",
  onDelete: "CASCADE"
})

KomentarPengumuman.belongsTo(User, {
  foreignKey: "id_user",
})

// relasi peserta - kehadiran
Peserta.hasMany(Kehadiran, {
  foreignKey: "id_peserta",
})

Kehadiran.belongsTo(Peserta, {
  foreignKey: "id_peserta",
})
