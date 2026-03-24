import Batch from "../models/batch-model";
import Pengumuman from "../models/pengumuman-model";
import Peserta from "../models/peserta-model";
import User from "../models/user-model";

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