import Pengumuman from "../models/pengumuman-model.js";

class PengumumanService {
  async getAllPengumuman() {
    return await Pengumuman.findAll();
  }

  async getPengumumanById(id) {
    return await Pengumuman.findOne({ where: { id_pengumuman: id } });
  }

  async createPengumuman(data) {
    return await Pengumuman.create(data);
  }

  async updatePengumuman(id, data) {
    const pengumuman = await Pengumuman.findOne({ where: { id_pengumuman: id } })

    if (!pengumuman) return null;

    await pengumuman.update(data);
    return pengumuman;
  }

  async deletePengumuman(id) {
    const pengumuman = await Pengumuman.findOne({ where: { id_pengumuman: id } })

    if(!pengumuman) return null;

    await pengumuman.destroy();
    return pengumuman;
  }
}

export default new PengumumanService();