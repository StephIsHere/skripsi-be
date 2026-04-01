import Peserta from "../models/peserta-model.js";
import User from "../models/user-model.js";

class PesertaService {
  async getAllPeserta() {
    return await Peserta.findAll();
  }

  async getPesertaById(id) {
    return await Peserta.findOne({ where: { id_peserta: id } });
  }

  async getPesertaByIdUser(id) {
    const results = await Peserta.findOne({
      where: { id_peserta: id },
      attributes: ['id_peserta'],
      include: [
        {
          model: User,
          attributes: ['nama', 'email', 'nomor_identitas']
        }
      ],
      raw: true
    });

    return {
      id_peserta: results.id_peserta,
      nama: results['User.nama'],
      email: results['User.email'],
      nomor_identitas: results['User.nomor_identitas'],
    };
  }

  async createPeserta(data) {
    return await Peserta.create(data);
  }

  async updatePeserta(id, data) {
    const peserta = await Peserta.findOne({ where: { id_peserta: id } });

    console.log(peserta);

    if (!peserta) return null;

    await peserta.update(data);
    return peserta;
  }

  async deletePeserta(id) {
    const peserta = await Peserta.findOne({ where: { id_peserta: id } });

    if (!peserta) return null;

    await peserta.destroy();
    return peserta;
  }

  async getPesertaByBatch(id) {
    return await Peserta.findAll({
      where: { id_batch: id },
      include: [
        {
          model: User,
          attributes: ['nama', 'email', 'nomor_identitas']
        }
      ],
    });
  }
}

export default new PesertaService();