import Kehadiran from "../models/kehadiran-model.js";

class KehadiranService {
  async getKehadiranByIdPeserta(id) {
    return await Kehadiran.findAll({ where: { id_peserta: id } });
  }

  async createKehadiran(data) {
    return await Kehadiran.create(data);
  }

  async updateKehadiran(id, data) {
    console.log('masuk pak eko : ', data)
    const kehadiran = await Kehadiran.findOne({ where: { id_kehadiran: id } });

    if (!kehadiran) return null;

    await kehadiran.update(data);
    return kehadiran;
  }

  async deleteKehadiran(id) {
    const kehadiran = await Kehadiran.findOne({ where: { id_kehadiran: id } });

    if(!kehadiran) return null;

    await kehadiran.destroy();
    return kehadiran;
  }
}

export default new KehadiranService();