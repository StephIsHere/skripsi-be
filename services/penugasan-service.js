import Penugasan from "../models/penugasan-model.js";
import User from "../models/user-model.js";
import Peserta from "../models/peserta-model.js";
import Soal from "../models/soal-model.js";
import KomentarTugas from "../models/komentar-tugas-model.js";
import SistemOperasi from "../models/sistem-operasi-model.js";
import Kelompok from "../models/kelompok-model.js"

class PenugasanService {
  async getPenugasanByIdBatch(idBatch) {
    try {
      const dataPesertaBatch = await Peserta.findAll({
        where: {
          id_batch: idBatch, status: "Pelatihan"
        },        
        include: [
          {
            model: User,
            attributes: ['nama', 'email', 'nomor_identitas'],
          },
          {
            model: Penugasan,
            include: [
              {
                model: Soal,
                attributes: ['judul', 'deskripsi', 'bobot'],
              },
              {
                model: SistemOperasi,
                attributes: ['nama', 'bobot'],
              }
            ]
          }
        ],
        order: [
          [Penugasan, 'createdAt', 'DESC']
        ]
      });

      const hasilRekapBatch = dataPesertaBatch.map(peserta => {
        const listPenugasan = peserta.Penugasans || [];
        const statusTugasTerakhir = listPenugasan.length > 0 ? listPenugasan[0].status : 'Belum Ada Tugas';

        return {
          id_peserta: peserta.id_peserta,
          id_batch: peserta.id_batch,
          profil: peserta.User,
          status_tugas_terakhir: statusTugasTerakhir,
          riwayat_penugasan: listPenugasan
        };
      });

      return hasilRekapBatch;

    } catch (error) {
      console.error(`Error saat fetch data peserta batch ${idBatch}:`, error);
      throw error;
    }
  }

  // kayanya ganti idPeserta aja deh?
  async getPenugasanByIdBatchAndByIdPeserta(idBatch, idPeserta) {
    try {
      const peserta = await Peserta.findOne({
        where: { id_batch: idBatch, id_peserta: idPeserta },
        include: [
          { model: User, attributes: ["nama", "email", "nomor_identitas","foto"] },
          {
            model: Penugasan, 
            include: [
              { model: User, attributes: ["nama","foto"] },
              { model: Soal, attributes: ["judul", "deskripsi", "bobot"] },
              { model: SistemOperasi, attributes: ["nama", "bobot"] },
            ],
          },
          {
            model: Kelompok,
            include: [
              {                
                model: Penugasan,
                include: [
                  { model: User, attributes: ["nama","foto"] },
                  { model: Soal, attributes: ["judul", "deskripsi", "bobot"] },
                  { model: SistemOperasi, attributes: ["nama", "bobot"] },
                ],
              },
            ],
          },
        ],
      });

      if (!peserta) return null;

      const tugasIndividu = peserta.Penugasans || [];
      const tugasKelompok = peserta.Kelompok?.Penugasans || [];

      // gabung dan urutkan berdasarkan tanggal terbaru
      const riwayatPenugasan = [...tugasIndividu, ...tugasKelompok].sort(
        (a, b) => new Date(b.createdAt) - new Date(a.createdAt)
      );

      const statusTugasTerakhir =
        riwayatPenugasan.length > 0 ? riwayatPenugasan[0].status : "Belum Ada Tugas";

      return {
        id_peserta: peserta.id_peserta,
        id_batch: peserta.id_batch,
        profil: peserta.User,
        kelompok: peserta.Kelompok || null,
        status_tugas_terakhir: statusTugasTerakhir,
        riwayat_penugasan: riwayatPenugasan,
      };
    } catch (error) {
      console.error(`Error fetch peserta ${idPeserta} batch ${idBatch}:`, error);
      throw error;
    }
  }

  async getPenugasanByIdKelompok(idKelompok) {
    try {
      const kelompok = await Kelompok.findOne({
        where: { id_kelompok: idKelompok },
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

      if (!kelompok) return null;

      const riwayatPenugasan = kelompok.Penugasans || [];
      const statusTugasTerakhir =
        riwayatPenugasan.length > 0
          ? riwayatPenugasan[0].status
          : "Belum Ada Tugas";

      return {
        id_kelompok: kelompok.id_kelompok,
        nama_kelompok: kelompok.nama_kelompok,
        id_batch: kelompok.id_batch,
        anggota: kelompok.Peserta || [],
        status_tugas_terakhir: statusTugasTerakhir,
        riwayat_penugasan: riwayatPenugasan,
      };
    } catch (error) {
      console.error(`Error fetch penugasan kelompok ${idKelompok}:`, error);
      throw error;
    }
  }

  async createPenugasan(data) {
    return await Penugasan.create(data);
  }

  async updatePenugasan(id, data) {
    const penugasan = await Penugasan.findOne({ where: { id_penugasan: id } });
    if (!penugasan) return null;
    await penugasan.update(data);
    return penugasan;
  }

  async deletePenugasan(id) {
    const penugasan = await Penugasan.findOne({ where: { id_penugasan: id } });
    if (!penugasan) return null;
    await penugasan.destroy();
    return penugasan;
  }

  async getPenugasanByIdPenugasan(id) {
    const results = await Penugasan.findOne({
      attributes: [
        "id_penugasan",
        "status",
        "tanggal_beri",
        "tanggal_kumpul",
        "file_pengumpulan",
      ],
      where: { id_penugasan: id },
      include: [
        {
          model: User,
          attributes: ["nama","foto"]
        },
        {
          model: Soal,
          attributes: ["judul", "bobot", "deskripsi"],
        },
        {
          model: SistemOperasi,
          attributes: ["nama", "bobot"],
        },
        {
          model: KomentarTugas,
          separate: true,
          order: [["createdAt","ASC"]],
          attributes: ["id_komentar_tugas", "isi_komentar", "createdAt"],
          include: [
            {
              model: User,
              attributes: ["id_user", "nama","foto"],
            },
          ],
        },
        {
          model: Kelompok,
          attributes: ["id_kelompok", "nama_kelompok"],
          include: [
            {
              model: Peserta,
              attributes: ["id_peserta"],
              include: [
                {
                  model: User,
                  attributes: ["id_user", "nama", "email"],
                },
              ],
            },
          ],
        },        
        {
          model: Peserta,
          attributes: ["id_peserta"],
          include: [
            {
              model: User,
              attributes: ["id_user", "nama", "email","foto"],
            },
          ],
        },
      ],
    });
    return results;
  }

  async uploadFilePengumpulan(idPenugasan, idPeserta, filePath) {
    const penugasan = await Penugasan.findOne({
      where: { id_penugasan: idPenugasan },
    });
    if (!penugasan) return null;

    if (penugasan.id_kelompok) {
      const peserta = await Peserta.findOne({
        where: { id_peserta: idPeserta },
      });
      if (!peserta || peserta.id_kelompok !== penugasan.id_kelompok) {
        throw new Error("Anda bukan anggota kelompok penerima tugas ini");
      }
    } else if (penugasan.id_peserta !== Number(idPeserta)) {
      throw new Error("Tugas ini bukan milik Anda");
    }

    await penugasan.update({
      file_pengumpulan: filePath,
      status: "Menunggu Verifikasi",
      tanggal_kumpul: new Date(),
    });

    return penugasan;
  }
}

export default new PenugasanService();


