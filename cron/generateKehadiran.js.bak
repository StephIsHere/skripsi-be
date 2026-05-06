import nodeCron from 'node-cron';
import Kehadiran from "../models/kehadiran-model.js";
import Peserta from "../models/peserta-model.js";
import { Op } from 'sequelize';

const startKehadiranCron = () => {
  // format schedule
  // {menit 0-59}
  // {jam 0-23}
  // {tanggal 1-31}
  // {bulan 1-12}
  // {hari dalam minggu (1-5 artinya senin sampai jumat)}
  nodeCron.schedule('1 0 * * 1-5', async () => {
    // testing
    // nodeCron.schedule('22 21 * * *', async () => {
    const today = new Date();
    const day = today.getDay();

    if (day === 0 || day === 6) return;

    today.setHours(0, 0, 0, 0);

    try {
      const startOfDay = new Date();
      startOfDay.setHours(0, 0, 0, 0);
      const endOfDay = new Date();
      endOfDay.setHours(23, 59, 59, 999);
      const existing = await Kehadiran.findOne({
        where: {
          createdAt: {
            [Op.between]: [startOfDay, endOfDay]
          }
        }
      });
      if (existing) {
        console.log('[CRON] Kehadiran hari ini sudah ada, skip.');
        return;
      }

      const pesertaList = await Peserta.findAll({ where: { status: "Pelatihan" } });

      const records = pesertaList.map(p => ({
        id_peserta: p.id_peserta,
        jam_datang: null,
        jam_pulang: null,
        laporan: null,
        is_verified: false,
      }));

      await Kehadiran.bulkCreate(records);
      console.log(`[CRON] ${records.length} record kehadiran dibuat - ${today.toDateString()}`);
    } catch (error) {
      console.error('[CRON] Gagal generate kehadiran:', error);
    }
  }, {
    timezone: "Asia/Jakarta"
  });

  console.log('[CRON] Kehadiran cron job aktif (Senin-Jumat, 00:01)');
};

export default startKehadiranCron;