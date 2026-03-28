import KomentarPengumuman from "../models/komentar_pengumuman-model.js";
import User from "../models/user-model.js";

class KomentarPengumumanService {

  async getKomentarByPengumuman(id) {
    return await KomentarPengumuman.findAll({
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
    return await KomentarPengumuman.create(data);
  }

  async deleteKomentar(id) {
    const komentar = await KomentarPengumuman.findOne({ where: { id_komentar_pengumuman: id } });
    if (!komentar) return null;
    await komentar.destroy();
    return komentar;
  }

}

export default new KomentarPengumumanService();