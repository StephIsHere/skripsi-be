import KomentarTugas from "../models/komentar-tugas-model.js";
import User from "../models/user-model.js";

class KomentarTugasService {

  async getKomentarByIdTugas(id) {
    return await KomentarTugas.findAll({
      where: { id_pengumuman: id },
      include: [
        {
          model: User,
          attributes: ["id_user", "nama"],
        },
      ],
    });
  }

  async createKomentar(data) {
    return await KomentarTugas.create(data);
  }

  async deleteKomentar(id) {
    const komentar = await KomentarTugas.findOne({ where: { id_komentar_tugas: id } });
    if (!komentar) return null;
    await komentar.destroy();
    return komentar;
  }
}

export default new KomentarTugasService();