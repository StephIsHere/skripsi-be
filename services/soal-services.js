import Soal from "../models/soal-model.js";

class SoalService {
  async getAllSoal() {
    return await Soal.findAll({
      order: [['createdAt', 'DESC']]
    });
  }

  async getSoalById(id) {
    return await Soal.findOne({ where: { id_soal: id } });
  }

  async createSoal(data) {
    return await Soal.create(data);
  }

  async updateSoal(id, data) {
    const soal = await Soal.findOne({ where: { id_soal: id } })

    if (!soal) return null;

    await soal.update(data);
    return soal;
  }

  async deleteSoal(id) {
    const soal = await Soal.findOne({ where: { id_soal: id } })

    if(!soal) return null;

    await soal.destroy();
    return soal;
  }
}

export default new SoalService();