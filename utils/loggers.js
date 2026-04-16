import Log from "../models/log-model.js";

export const log = async ({ id_user, aksi, entitas, id_entitas = null, deskripsi = null }) => {
  try {
    await Log.create({ id_user, aksi, entitas, id_entitas, deskripsi });
  } catch (err) {
    console.error("Gagal mencatat log:", err.message);    
  }
};