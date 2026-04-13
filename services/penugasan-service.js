import Penugasan from "../models/penugasan-model.js";
import User from "../models/user-model.js";
import Peserta from "../models/peserta-model.js";
import Soal from "../models/soal-model.js";
import { Sequelize } from "sequelize";
import KomentarTugas from "../models/komentar-tugas-model.js";
import SistemOperasi from "../models/sistem-operasi-model.js";

class PenugasanService {
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

  async createPenugasan(data){
    return await Penugasan.create(data);
  }

  async updatePenugasan(id, data){
    const penugasan = await Penugasan.findOne({where: {id_penugasan:id} });
    if(!penugasan) return null;
    await penugasan.update(data);
    return penugasan;
  }

  async deletePenugasan(id) {
    const penugasan = await Penugasan.findOne({where:{id_penugasan:id}});
    if(!penugasan) return null;
    await penugasan.destroy();
    return penugasan;
  }

  async getPenugasanByIdPenugasan(id) {
    console.log('masuk123 123 123')
    const results = await Penugasan.findOne({
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


