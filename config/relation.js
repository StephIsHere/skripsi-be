import Batch from "../models/batch-model.js";
import Pengumuman from "../models/pengumuman-model.js";
import Peserta from "../models/peserta-model.js";
import User from "../models/user-model.js";

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
  foreignKey: "id_user"
})

Pengumuman.belongsTo(User,{
  foreignKey: "id_user"
})