import Kelompok from "../models/kelompok-model.js";
import Peserta from "../models/peserta-model.js";
import User from "../models/user-model.js";
import Penugasan from "../models/penugasan-model.js";
import Soal from "../models/soal-model.js";
import SistemOperasi from "../models/sistem-operasi-model.js";

class KelompokService {
  async createKelompok(data) {
    return await Kelompok.create(data);
  }

  async getKelompokByBatch(idBatch) {
    try {
      const kelompok = await Kelompok.findAll({
        where: { id_batch: idBatch },
        include: [
          {
            model: Peserta,
            include: [
              {
                model: User,
                attributes: ["nama", "email", "nomor_identitas"],
              },
            ],
          },
        ],
        order: [["createdAt", "ASC"]],
      });

      return kelompok;
    } catch (error) {
      console.error(`Error saat fetch kelompok batch ${idBatch}:`, error);
      throw error;
    }
  }

  async getKelompokById(id) {
    try {
      const kelompok = await Kelompok.findOne({
        where: { id_kelompok: id },
        include: [
          {
            model: Peserta,
            include: [
              {
                model: User,
                attributes: ["nama", "email", "nomor_identitas"],
              },
            ],
          },
          {
            model: Penugasan,
            include: [
              {
                model: Soal,
                attributes: ["judul", "deskripsi", "bobot"],
              },
              {
                model: SistemOperasi,
                attributes: ["nama", "bobot"],
              },
            ],
          },
        ],
        order: [[Penugasan, "createdAt", "DESC"]],
      });

      return kelompok;
    } catch (error) {
      console.error(`Error saat fetch kelompok ${id}:`, error);
      throw error;
    }
  }

  async updateKelompok(id, data) {
    const kelompok = await Kelompok.findOne({ where: { id_kelompok: id } });
    if (!kelompok) return null;
    await kelompok.update(data);
    return kelompok;
  }

  async deleteKelompok(id) {
    const kelompok = await Kelompok.findOne({ where: { id_kelompok: id } });
    if (!kelompok) return null;

    // lepaskan semua anggota dari kelompok sebelum kelompok dihapus
    await Peserta.update(
      { id_kelompok: null },
      { where: { id_kelompok: id } }
    );

    await kelompok.destroy();
    return kelompok;
  }

  async addAnggota(idKelompok, idPeserta) {
    // pastikan kelompok ada
    const kelompok = await Kelompok.findOne({
      where: { id_kelompok: idKelompok },
    });
    if (!kelompok) return { error: "Kelompok tidak ditemukan" };

    // pastikan peserta ada
    const peserta = await Peserta.findOne({
      where: { id_peserta: idPeserta },
    });
    if (!peserta) return { error: "Peserta tidak ditemukan" };

    // pastikan peserta berada di batch yang sama dengan kelompok
    if (peserta.id_batch !== kelompok.id_batch) {
      return { error: "Peserta tidak berada di batch yang sama dengan kelompok" };
    }

    // pastikan peserta belum tergabung di kelompok lain (1 peserta 1 kelompok per batch)
    if (peserta.id_kelompok && peserta.id_kelompok !== idKelompok) {
      return {
        error:
          "Peserta sudah tergabung di kelompok lain. Keluarkan dulu dari kelompok sebelumnya.",
      };
    }

    await peserta.update({ id_kelompok: idKelompok });
    return { peserta };
  }

  async removeAnggota(idKelompok, idPeserta) {
    const peserta = await Peserta.findOne({
      where: { id_peserta: idPeserta, id_kelompok: idKelompok },
    });
    if (!peserta) return null;

    await peserta.update({ id_kelompok: null });
    return peserta;
  }
}

export default new KelompokService();