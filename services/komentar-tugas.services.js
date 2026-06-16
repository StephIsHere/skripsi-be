import KomentarTugas from "../models/komentar-tugas-model.js";
import User from "../models/user-model.js";

class KomentarTugasService {

  async getKomentarByIdTugas(id) {
    return await KomentarTugas.findAll({
      where: { id_penugasan: id },
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
}

export default new KomentarTugasService();