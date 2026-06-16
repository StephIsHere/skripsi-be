import Kehadiran from "../models/kehadiran-model.js";

class KehadiranService {
  async getKehadiranByIdPeserta(id) {
    const kehadiran = await Kehadiran.findAll({ where: { id_peserta: id }, order: [['createdAt', 'DESC']] });
    if (!kehadiran) return null;
    return kehadiran; 
  }

  async updateKehadiran(id, data) {
    const kehadiran = await Kehadiran.findOne({ where: { id_kehadiran: id } });
    if (!kehadiran) return null;
    await kehadiran.update(data);
    return kehadiran;
  }
}

export default new KehadiranService();