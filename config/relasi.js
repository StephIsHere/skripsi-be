import Batch from "../models/batch-model";
import Pengumuman from "../models/pengumuman-model";

Batch.hasMany(Pengumuman, {
  foreignKey: "id_batch"
});

Pengumuman.belongsTo(Batch, {
  foreignKey: "id_batch"
});