import Penugasan from "../models/penugasan-model.js";
import User from "../models/user-model.js";
import Peserta from "../models/peserta-model.js";
import Soal from "../models/soal-model.js";
import { Sequelize } from "sequelize";
import KomentarTugas from "../models/komentar-tugas-model.js";
import SistemOperasi from "../models/sistem-operasi-model.js";

class PenugasanService {
  // async getPenugasanByIdBatch(idBatch) {
  //   const results = await User.findAll({
  //     attributes: [
  //       'nama',
  //       // gw mau nambahin ini gimana caranya??
  //       [Sequelize.fn('SUM', Sequelize.col('Peserta.Penugasans.Soal.bobot')), 'totalBobot'],
  //       // [Sequelize.fn('SUM', Sequelize.col('Peserta.Penugasans.SistemOperasi.bobot')), 'totalBobot2'],
  //       [
  //         Sequelize.fn('COUNT',
  //           Sequelize.literal("CASE WHEN \"Peserta->Penugasans\".\"status\" = 'Selesai' THEN 1 ELSE NULL END")
  //         ),
  //         'totalTugasSelesai'
  //       ]
  //     ],
  //     include: [
  //       {
  //         model: Peserta,
  //         where: { id_batch: idBatch },
  //         attributes: ['id_peserta'],
  //         include: [
  //           {
  //             model: Penugasan,
  //             as: 'Penugasans',
  //             attributes: [],
  //             include: [
  //               {
  //                 model: Soal,
  //                 attributes: [],
  //               }
  //             ]
  //           }
  //         ]
  //       }
  //     ],
  //     group: ['User.id_user', 'User.email', 'User.nomor_identitas', 'User.nama', 'Peserta.id_peserta'],
  //     raw: true,
  //     subQuery: false
  //   });

  //   // Jika tidak ada hasil, langsung return array kosong
  //   if (!results || results.length === 0) return [];

  //   // Ambil daftar id_peserta dari hasil query pertama
  //   const pesertaIds = results.map(res => res['Peserta.id_peserta']);

  //   // ------------------------------------------------------------------
  //   // STEP 2: Query Penugasan terakhir per peserta
  //   // ------------------------------------------------------------------
  //   const penugasans = await Penugasan.findAll({
  //     where: {
  //       // Asumsi foreign key ke Peserta bernama 'id_peserta'
  //       id_peserta: pesertaIds
  //     },
  //     // Urutkan dari yang terbaru ke yang paling lama
  //     order: [['createdAt', 'DESC']],
  //     raw: true
  //   });

  //   // Buat Hash Map agar proses pencocokan lebih cepat (O(N))
  //   const latestPenugasanMap = {};
  //   penugasans.forEach(p => {
  //     // Karena data sudah diurutkan DESC, data pertama yang kita looping 
  //     // untuk setiap id_peserta pasti adalah data yang paling akhir dibuat.
  //     if (!latestPenugasanMap[p.id_peserta]) {
  //       latestPenugasanMap[p.id_peserta] = p;
  //     }
  //   });

  //   // ------------------------------------------------------------------
  //   // STEP 3: Gabungkan (Merge) hasil agregasi dengan object penugasannya
  //   // ------------------------------------------------------------------
  //   return results.map(res => {
  //     const idPeserta = res['Peserta.id_peserta'];
  //     return {
  //       id_peserta: idPeserta,
  //       nama: res.nama,
  //       email: res.email,
  //       nomor_identitas: res.nomor_identitas,
  //       totalBobot: res.totalBobot ? Number(res.totalBobot) : 0,
  //       totalTugas: res.totalTugasSelesai ? Number(res.totalTugasSelesai) : 0,

  //       // Sisipkan object penugasan terbaru di sini
  //       penugasanTerakhir: latestPenugasanMap[idPeserta] || null
  //     };
  //   });
  // }

  async getPenugasanByIdBatch(idBatch) {
    try {
      const dataPesertaBatch = await Peserta.findAll({
        where: {
          id_batch: idBatch
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
        const statusTugasTerakhir = listPenugasan.length > 0 ? listPenugasan[0].status : 'Belum ada tugas';

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

async getPenugasanByIdBatchAndByIdPeserta(idBatch, idPeserta) {
  console.log(',asil')
    try {
      const peserta = await Peserta.findOne({
        where: {
          id_batch: idBatch,
          id_peserta: idPeserta
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

      if (!peserta) {
        return null;
      }

      const listPenugasan = peserta.Penugasans || [];
      const statusTugasTerakhir = listPenugasan.length > 0 ? listPenugasan[0].status : 'Belum ada tugas';

      return {
        id_peserta: peserta.id_peserta,
        id_batch: peserta.id_batch,
        profil: peserta.User,
        status_tugas_terakhir: statusTugasTerakhir,
        riwayat_penugasan: listPenugasan
      };

    } catch (error) {
      console.error(`Error saat fetch data peserta ${idPeserta} di batch ${idBatch}:`, error);
      throw error;
    }
  }

  // done
  async getPenugasanByIdPeserta(id) {
    const results = await Penugasan.findAll({
      attributes: ['id_penugasan', 'status', 'tanggal_beri'],
      where: { id_peserta: id },
      include: [
        {
          model: Peserta,
          attributes: [],
          include: [
            {
              model: User,
              attributes: ['nama']
            }
          ]
        },
        {
          model: User,
          attributes: ['nama']
        },
        {
          model: Soal,
          attributes: ['judul', 'bobot']
        },
        {
          model: SistemOperasi,
          attributes: ['nama', 'bobot']
        }
      ]
    });
    return results;
  }

  // done
  async getPenugasanByIdPenugasan(id) {
    const results = await Penugasan.findAll({
      attributes: ['id_penugasan', 'status', 'tanggal_beri', 'tanggal_kumpul'],
      where: { id_penugasan: id },
      include: [
        {
          model: Soal,
          attributes: ['judul', 'bobot', 'deskripsi']
        },
        {
          model: SistemOperasi,
          attributes: ['nama', 'bobot']
        },
        {
          model: KomentarTugas,
          attributes: ['id_komentar_tugas', 'isi_komentar', 'createdAt'],
          include: [
            {
              model: User,
              attributes: ['id_user', 'nama']
            }
          ]
        }
      ],
    });
    return results;
  }
}

export default new PenugasanService();


