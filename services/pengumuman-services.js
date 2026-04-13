import KomentarPengumuman from "../models/komentar_pengumuman-model.js";
import Pengumuman from "../models/pengumuman-model.js";
import User from "../models/user-model.js";

class PengumumanService {

  async getAllPengumuman() {
    return await Pengumuman.findAll();
  }

  async getPengumumanById(id) {
    const result = await Pengumuman.findOne({
      where: { id_pengumuman: id },
      include: [
        {
          model: User,
          as: "penerima",
          attributes: ["id_user", "nama"],
          through: { attributes: [] }
        },
        {
          model: User,
          as: "pembuat",
          attributes: ["id_user", "nama"],
        },
        {
          model: KomentarPengumuman,
          attributes: ["id_komentar_pengumuman", "isi_komentar", "createdAt"],
          include: [
            {
              model: User,
              attributes: ["id_user", "nama"]
            }
          ]
        }
      ],
    });
    return result;
  }

async getPengumumanByUser(id) {
  return await Pengumuman.findAll({
    include: [
      {
        model: User,
        as: "penerima",
        attributes: ["id_user", "nama"],
        through: { attributes: [] },
        required: true,
        where: { id_user: id }
      },
      {
        model: User,
        as: "pembuat",
        attributes: ["id_user", "nama"],
      },
      {
        model: KomentarPengumuman,
        attributes: ["id_komentar_pengumuman", "isi_komentar", "createdAt"],
        include: [
          {
            model: User,
            attributes: ["id_user", "nama"]
          }
        ]
      }
    ]
  });
}

  async getPengumumanByIdBatch(id) {
    return await Pengumuman.findAll({
      where: { id_batch: id },
      include: [
        {
          model: User,
          as: "penerima",
          attributes: ["id_user", "nama"],
          through: { attributes: [] }
        },
        {
          model: User,
          as: "pembuat",
          attributes: ["id_user", "nama"],
        }
      ],
      order: [['createdAt', 'DESC']]
    });
  }

  async createPengumuman(data) {
    try {
      const { penerima, ...pengumumanData } = data;
      const pengumuman = await Pengumuman.create(pengumumanData);
      if (penerima?.length > 0) {
        await pengumuman.setPenerima(penerima);
      }
      return pengumuman;
    } catch (error) {
      console.error('CREATE ERROR:', error);
    }
  }

  async updatePengumuman(id, data) {
    const { penerima, ...pengumumanData } = data;
    const pengumuman = await Pengumuman.findOne({ where: { id_pengumuman: id } });
    if (!pengumuman) return null;
    await pengumuman.update(pengumumanData);
    if (penerima) {
      await pengumuman.setPenerima(penerima);
    }
    return pengumuman;
  }

  async deletePengumuman(id) {
    const pengumuman = await Pengumuman.findOne({ where: { id_pengumuman: id } });
    if (!pengumuman) return null;
    await pengumuman.destroy();
    return pengumuman;
  }
}

export default new PengumumanService();