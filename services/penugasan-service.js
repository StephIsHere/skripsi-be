import Penugasan from "../models/penugasan-model.js";
import User from "../models/user-model.js";
import Peserta from "../models/peserta-model.js";
import Soal from "../models/soal-model.js";
import { Sequelize } from "sequelize";
import KomentarTugas from "../models/komentar-tugas-model.js";

class PenugasanService {
  async getRekapPesertaByBatch(idBatch) {
    // ------------------------------------------------------------------
    // STEP 1: Query agregasi (Sama persis dengan kodemu yang sekarang)
    // ------------------------------------------------------------------
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

    // Jika tidak ada hasil, langsung return array kosong
    if (!results || results.length === 0) return [];

    // Ambil daftar id_peserta dari hasil query pertama
    const pesertaIds = results.map(res => res['Peserta.id_peserta']);

    // ------------------------------------------------------------------
    // STEP 2: Query Penugasan terakhir per peserta
    // ------------------------------------------------------------------
    const penugasans = await Penugasan.findAll({
      where: {
        // Asumsi foreign key ke Peserta bernama 'id_peserta'
        id_peserta: pesertaIds
      },
      // Urutkan dari yang terbaru ke yang paling lama
      order: [['createdAt', 'DESC']],
      raw: true
    });

    // Buat Hash Map agar proses pencocokan lebih cepat (O(N))
    const latestPenugasanMap = {};
    penugasans.forEach(p => {
      // Karena data sudah diurutkan DESC, data pertama yang kita looping 
      // untuk setiap id_peserta pasti adalah data yang paling akhir dibuat.
      if (!latestPenugasanMap[p.id_peserta]) {
        latestPenugasanMap[p.id_peserta] = p;
      }
    });

    // ------------------------------------------------------------------
    // STEP 3: Gabungkan (Merge) hasil agregasi dengan object penugasannya
    // ------------------------------------------------------------------
    return results.map(res => {
      const idPeserta = res['Peserta.id_peserta'];

      return {
        id_peserta: idPeserta,
        nama: res.nama,
        email: res.email,
        nomor_identitas: res.nomor_identitas,
        totalBobot: res.totalBobot ? Number(res.totalBobot) : 0,
        totalTugas: res.totalTugasSelesai ? Number(res.totalTugasSelesai) : 0,

        // Sisipkan object penugasan terbaru di sini
        penugasanTerakhir: latestPenugasanMap[idPeserta] || null
      };
    });
  }

  async getTugasByIdPeserta(idPeserta) {
    const results = await Penugasan.findAll({
      attributes: ['id_penugasan', 'status', 'tanggal_beri'],
      where: { id_peserta: idPeserta },
      include: [{
        model: Soal,
        attributes: ['bobot', 'judul']
      }],
      raw: true
    });

    return results.map(res => {
      return {
        id_penugasan: res.id_penugasan,
        judul: res["Soal.judul"],
        tanggal_pembuatan: res.createdAt,
        status: res.status,
        bobot: res["Soal.bobot"] ? Number(res["Soal.bobot"]) : 0,
      };
    });
  }

  async getPenugasanByIdTugas(idTugas) {
    const results = await Penugasan.findAll({
      attributes: ['id_penugasan', 'status', 'tanggal_beri', 'tanggal_kumpul'],
      where: { id_tugas: idTugas },
      include: [{
        model: Soal,
        attributes: ['bobot', 'judul']
      }],
      raw: true
    });

    return results.map(res => {
      return {
        id_penugasan: res.id_penugasan,
        judul: res["Soal.judul"],
        tanggal_pembuatan: res.createdAt,
        status: res.status,
        bobot: res["Soal.bobot"] ? Number(res["Soal.bobot"]) : 0,
      };
    });
  }

  async getPenugasanByIdPenugasan(idPenugasan) {
    const result = await Penugasan.findOne({
      attributes: ['id_penugasan', 'status', 'tanggal_beri', 'tanggal_kumpul', 'createdAt'],
      where: { id_penugasan: idPenugasan },
      include: [
        {
          model: User,
          attributes: ['nama'],
          // 'as' DIHAPUS karena tidak ada di file relasi
        },
        {
          model: Soal,
          attributes: ['judul', 'deskripsi', 'bobot']
        },
        {
          model: KomentarTugas,
          attributes: ['id_komentar_tugas', 'isi_komentar', 'createdAt'],
          include: [
            {
              model: User,
              attributes: ['nama'],
              // 'as' DIHAPUS karena tidak ada di file relasi
            }
          ]
        }
      ]
    });

    if (!result) {
      return null;
    }

    return {
      id_penugasan: result.id_penugasan,
      status: result.status,
      tanggal_beri: result.tanggal_beri,
      tanggal_kumpul: result.tanggal_kumpul,
      tanggal_pembuatan: result.createdAt,

      // PERBAIKAN: Ganti result.PemberiTugas menjadi result.User
      pemberi_tugas: result.User?.nama || null,

      judul: result.Soal?.judul || null,
      isi: result.Soal?.deskripsi || null,
      bobot: result.Soal?.bobot ? Number(result.Soal.bobot) : 0,

      // PERBAIKAN: Ganti k.Komentator menjadi k.User
      komentar: result.KomentarTugas.map(k => ({
        id_komentar: k.id_komentar,
        isi_komentar: k.isi_komentar,
        nama_komentator: k.User?.nama || null,
        waktu_komentar: k.createdAt
      }))
    };
  }
}

export default new PenugasanService();


