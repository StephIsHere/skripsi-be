import Batch from "../models/batch-model.js";
import Pengumuman from "../models/pengumuman-model.js";
import Peserta from "../models/peserta-model.js";
import User from "../models/user-model.js";
import PenerimaPengumuman from "../models/penerima-pengumuman-model.js";
import KomentarPengumuman from "../models/komentar_pengumuman-model.js";
import Kehadiran from "../models/kehadiran-model.js";
import Penugasan from "../models/penugasan-model.js";
import Soal from "../models/soal-model.js";
import KomentarTugas from "../models/komentar-tugas-model.js";
import SistemOperasi from "../models/sistem-operasi-model.js";
import Kelompok from "../models/kelompok-model.js";
import Log from "../models/log-model.js";


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

// relasi peserta - penugasan
Peserta.hasMany(Penugasan, {
  foreignKey: "id_peserta"
})

Penugasan.belongsTo(Peserta, {
  foreignKey: "id_peserta"
})

// relasi user - penugasan
User.hasMany(Penugasan, {
  foreignKey: "id_user"
})

Penugasan.belongsTo(User, {
  foreignKey: "id_user"
})

// relasi soal - penugasan
Soal.hasMany(Penugasan, {
  foreignKey: "id_soal"
})

Penugasan.belongsTo(Soal, {
  foreignKey: "id_soal"
})

// relasi sistem operasi - penugasan 
SistemOperasi.hasMany(Penugasan, {
  foreignKey: "id_so"
})

Penugasan.belongsTo(SistemOperasi, {
  foreignKey: "id_so"
})

// relasi penugasan - komentar tugas
Penugasan.hasMany(KomentarTugas, {
  foreignKey: "id_penugasan",
  onDelete: "CASCADE"
})

KomentarTugas.belongsTo(Penugasan, {
  foreignKey: "id_penugasan"
})


// relasi user - komentar tugas
User.hasMany(KomentarTugas, {
  foreignKey: "id_user",
  onDelete: "CASCADE"
})

KomentarTugas.belongsTo(User, {
  foreignKey: "id_user",
})

// relasi batch - kelompok
Batch.hasMany(Kelompok, {
  foreignKey: "id_batch",
});

Kelompok.belongsTo(Batch, {
  foreignKey: "id_batch",
});

// relasi kelompok - peserta (1 kelompok punya banyak peserta, 1 peserta hanya 1 kelompok)
Kelompok.hasMany(Peserta, {
  foreignKey: "id_kelompok",
});

Peserta.belongsTo(Kelompok, {
  foreignKey: "id_kelompok",
});

// relasi kelompok - penugasan (1 kelompok bisa dapat banyak tugas)
Kelompok.hasMany(Penugasan, {
  foreignKey: "id_kelompok",
});

Penugasan.belongsTo(Kelompok, {
  foreignKey: "id_kelompok",
});

// relasi user - log
User.hasMany(Log, { foreignKey: "id_user" });

Log.belongsTo(User, { foreignKey: "id_user" });