import SistemOperasi from "../models/sistem-operasi-model.js";

class SistemOperasiService {
  async getAllSistemOperasi() {
    return await SistemOperasi.findAll({
      order: [['createdAt', 'DESC']]
    });
  }

  async getSistemOperasiById(id) {
    return await SistemOperasi.findOne({ where: { id_so: id } });
  }

  async createSistemOperasi(data) {
    return await SistemOperasi.create(data);
  }

  async updateSistemOperasi(id, data) {
    const sistemOperasi = await SistemOperasi.findOne({ where: { id_so: id } });
    if (!sistemOperasi) return null;
    await sistemOperasi.update(data);
    return sistemOperasi;
  }

  async deleteSistemOperasi(id) {
    const sistemOperasi = await SistemOperasi.findOne({ where: { id_so: id } });
    if (!sistemOperasi) return null;
    await sistemOperasi.destroy();
    return sistemOperasi;
  }
}

export default new SistemOperasiService();