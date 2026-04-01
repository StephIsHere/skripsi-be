import Penugasan from "../models/penugasan-model.js";
import User from "../models/user-model.js";
import Peserta from "../models/peserta-model.js";
import Soal from "../models/soal-model.js";
import { Sequelize } from "sequelize";

class PenugasanService {
  async getRekapPesertaByBatch(idBatch) {
    const results = await User.findAll({
      attributes: [
        'nama', 'email', 'nomor_identitas',
        [Sequelize.fn('SUM', Sequelize.col('Peserta.Penugasans.Soal.bobot')), 'totalBobot'],
        [
          Sequelize.fn('COUNT',
            Sequelize.literal("CASE WHEN \"Peserta->Penugasans\".\"status\" = 'Selesai' THEN 1 ELSE NULL END")
          ),
          'totalTugasSelesai'
        ]
      ],
      include: [
        {
          model: Peserta,
          where: { id_batch: idBatch },
          attributes: ['id_peserta'], 
          include: [
            {
              model: Penugasan,
              as: 'Penugasans',
              attributes: [],
              include: [
                {
                  model: Soal,
                  attributes: [],
                }
              ]
            }
          ]
        }
      ],
      group: ['User.id_user', 'User.email', 'User.nomor_identitas', 'User.nama', 'Peserta.id_peserta'], 
      raw: true,
      subQuery: false
    });

    return results.map(res => ({
      id_peserta: res['Peserta.id_peserta'],
      nama: res.nama,
      email: res.email,
      nomor_identitas: res.nomor_identitas,
      totalBobot: res.totalBobot ? Number(res.totalBobot) : 0,
      totalTugas: res.totalTugasSelesai ? Number(res.totalTugasSelesai) : 0
    }));
  }
}

export default new PenugasanService();


