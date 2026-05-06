import nodeCron from 'node-cron';
import Kehadiran from "../models/kehadiran-model.js";
import Peserta from "../models/peserta-model.js";
import Batch from "../models/batch-model.js";
import { Op } from 'sequelize';

const startKehadiranCron = () => {
  nodeCron.schedule('50 12 * * 1-5', async () => {
    const today = new Date();
    const day = today.getDay();
    if (day === 0 || day === 6) return;

    try {
      const activeBatch = await Batch.findOne({ where: { status: true } });
      if (!activeBatch) {
        console.log('[CRON] Tidak ada batch aktif, skip.');
        return;
      }

      const startOfToday = new Date();
      startOfToday.setHours(0, 0, 0, 0);

      const tanggalMulai = new Date(activeBatch.tanggal_mulai);
      tanggalMulai.setHours(0, 0, 0, 0);

      const tanggalSelesai = new Date(activeBatch.tanggal_selesai);
      tanggalSelesai.setHours(23, 59, 59, 999);

      if (startOfToday < tanggalMulai || startOfToday > tanggalSelesai) {
        console.log(`[CRON] Di luar periode pelatihan batch ${activeBatch.nama_batch}, skip.`);
        return;
      }

      const pesertaList = await Peserta.findAll({
        where: {
          status: "Pelatihan",
          id_batch: activeBatch.id_batch,
        }
      });

      if (pesertaList.length === 0) {
        console.log('[CRON] Tidak ada peserta pelatihan di batch aktif.');
        return;
      }

      const startOfDay = new Date();
      startOfDay.setHours(0, 0, 0, 0);
      const endOfDay = new Date();
      endOfDay.setHours(23, 59, 59, 999);

      const existing = await Kehadiran.findOne({
        where: {
          id_peserta: { [Op.in]: pesertaList.map(p => p.id_peserta) },
          createdAt: { [Op.between]: [startOfDay, endOfDay] }
        }
      });
      if (existing) {
        console.log('[CRON] Kehadiran hari ini sudah ada, skip.');
        return;
      }

      const records = pesertaList.map(p => ({
        id_peserta: p.id_peserta,
        jam_datang: null,
        jam_pulang: null,
        laporan: null,
        is_verified: false,
      }));

      await Kehadiran.bulkCreate(records);
      console.log(`[CRON] ${records.length} kehadiran dibuat untuk batch ${activeBatch.nama_batch} - ${today.toDateString()}`);
    } catch (error) {
      console.error('[CRON] Gagal generate kehadiran:', error);
    }
  }, { timezone: "Asia/Jakarta" });

  console.log('[CRON] Kehadiran cron job aktif (Senin-Jumat, 00:01)');
};

export default startKehadiranCron;
