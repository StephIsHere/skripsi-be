import penugasanService from "../services/penugasan-service.js";
import Penugasan from "../models/penugasan-model.js";
import { log } from "../utils/loggers.js";

class PenugasanController {

  async getPenugasanByIdBatch(req, res) {
    try {
      const { idBatch } = req.params;
      const penugasan = await penugasanService.getPenugasanByIdBatch(idBatch);
      return res.json({ success: true, penugasan });
    } catch (error) {
      return res.status(500).json({ success: false, message: error.message });
    }
  }

  async getPenugasanByIdKelompok(req, res) {
    try {
      const { idKelompok } = req.params;
      const penugasan = await penugasanService.getPenugasanByIdKelompok(idKelompok);
      if (!penugasan) {
        return res.status(404).json({ success: false, message: "Data penugasan kelompok tidak ditemukan" });
      }
      return res.status(200).json({ success: true, penugasan });
    } catch (error) {
      console.error("Error di controller getPenugasanByIdKelompok:", error);
      return res.status(500).json({ success: false, message: "Terjadi kesalahan pada server", error: error.message });
    }
  }

  async getPenugasanByIdPeserta(req, res) {
    try {
      const { idPeserta } = req.params;
      const penugasan = await penugasanService.getPenugasanByIdPeserta(idPeserta);
      if (!penugasan) {
        return res.status(404).json({ success: false, message: "Data penugasan tidak ditemukan" });
      }
      return res.status(200).json({ success: true, penugasan });
    } catch (error) {
      console.error("Error di controller getPenugasanByIdPeserta:", error);
      return res.status(500).json({ success: false, message: "Terjadi kesalahan pada server", error: error.message });
    }
  }

  async getPenugasanByIdPenugasan(req, res) {
    try {
      const { idPenugasan } = req.params;
      const { role, id_peserta, id_kelompok } = req.user;
      const penugasan = await penugasanService.getPenugasanByIdPenugasan(idPenugasan);
      if (!penugasan) {
        return res.status(404).json({ success: false, message: "Data penugasan tidak ditemukan" });
      }

      if (role === "Peserta") {
        const tugasIdPeserta = penugasan.Pesertum?.id_peserta ?? null;
        const tugasIdKelompok = penugasan.Kelompok?.id_kelompok ?? null;     

        const isPemilikIndividu = tugasIdPeserta && Number(tugasIdPeserta) === Number(id_peserta);
        const isAnggotaKelompok = tugasIdKelompok && Number(tugasIdKelompok) === Number(id_kelompok);


        if (!isPemilikIndividu && !isAnggotaKelompok) {
          return res.status(403).json({ success: false, message: "Tugas ini bukan milik Anda" });
        }
      }
      return res.status(200).json({ success: true, penugasan });

    } catch (error) {
      console.error("Error di controller getPenugasanByIdPenugasan:", error);
      return res.status(500).json({ success: false, message: "Terjadi kesalahan pada server", error: error.message });
    }
  }

  async getPenugasanPeserta(req, res) {
    try {
      const { idBatch, idPeserta } = req.params;
      const { id_peserta } = req.user;

      if (Number(idPeserta) !== Number(id_peserta)) {
        return res.status(403).json({ success: false, message: "Unauthorized!" });
      }

      const penugasan = await penugasanService.getPenugasanPeserta(idPeserta);
      if (req.user.status === "Seleksi Berkas") {
        return res.status(403).json({ success: false, message: "Unauthorized!" });
      }
      if (!penugasan) {
        return res.status(404).json({ success: false, message: "Data penugasan peserta tidak ditemukan" });
      }
      return res.status(200).json({ success: true, penugasan });
    } catch (error) {
      console.error("Error di controller getPenugasanByIdBatchAndIdPeserta:", error);
      return res.status(500).json({ success: false, message: "Terjadi kesalahan pada server", error: error.message });
    }
  }

  async createPenugasan(req, res) {
    try {
      const penugasan = await penugasanService.createPenugasan(req.body);
      await log({
        id_user: req.user.id_user,
        aksi: "CREATE",
        entitas: "penugasan",
        id_entitas: penugasan.id_penugasan,
        deskripsi: "Membuat tugas untuk peserta",
      });
      return res.status(200).json({ success: true, penugasan });
    } catch (error) {
      console.error("error:", error);
      return res.status(500).json({ success: false, message: "Terjadi kesalahan pada server", error: error.message });
    }
  }

  async updatePenugasan(req, res) {
    try {
      const { idPenugasan } = req.params;
      const penugasan = await penugasanService.updatePenugasan(idPenugasan, req.body);
      if (!penugasan) {
        return res.status(404).json({ success: false, message: "Penugasan not found" });
      }
      await log({
        id_user: req.user.id_user,
        aksi: "UPDATE",
        entitas: "penugasan",
        id_entitas: penugasan.id_penugasan,
        deskripsi: "Mengubah tugas milik peserta",
      });
      return res.json({ success: true, penugasan });
    } catch (error) {
      return res.status(500).json({ success: false, message: error.message });
    }
  }

  async deletePenugasan(req, res) {
    try {
      const { idPenugasan } = req.params;
      const penugasan = await penugasanService.deletePenugasan(idPenugasan);
      if (!penugasan) {
        return res.status(404).json({ success: false, message: "Penugasan not found" });
      }
      await log({
        id_user: req.user.id_user,
        aksi: "DELETE",
        entitas: "penugasan",
        id_entitas: penugasan.id_penugasan,
        deskripsi: "Menghapus tugas milik peserta",
      });
      return res.json({ success: true, message: "Penugasan deleted successfully" });
    } catch (error) {
      return res.status(500).json({ success: false, message: error.message });
    }
  }

  async uploadFilePengumpulan(req, res) {
    try {
      if (!req.file) {
        return res.status(400).json({ success: false, message: "File tidak ditemukan. Upload file PDF atau Word." });
      }

      const { idPenugasan, idPeserta } = req.params;
      const filePath = `/uploads/batch/${req.user.nama_batch}/peserta/${req.user.nama}/laporan/${req.file.filename}`;

      const penugasan = await penugasanService.uploadFilePengumpulan(idPenugasan, idPeserta, filePath);
      if (!penugasan) {
        return res.status(404).json({ success: false, message: "Penugasan tidak ditemukan" });
      }
      await log({
        id_user: req.user.id_user,
        aksi: "UPDATE",
        entitas: "penugasan",
        id_entitas: penugasan.id_penugasan,
        deskripsi: "Peserta telah mengumpulkan tugas",
      });

      return res.status(200).json({ success: true, message: "File berhasil dikumpulkan", penugasan });
    } catch (error) {
      console.error("Error upload file pengumpulan:", error);
      return res.status(500).json({ success: false, message: error.message });
    }
  }
}

export default new PenugasanController();