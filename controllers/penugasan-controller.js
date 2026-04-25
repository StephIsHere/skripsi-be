import penugasanService from "../services/penugasan-service.js";
import Penugasan from "../models/penugasan-model.js";
import Peserta from "../models/peserta-model.js";
import { log } from "../utils/loggers.js";

class PenugasanController {

  async getPenugasanByIdBatch(req, res) {
    try {
      const { idBatch } = req.params; // ✅ was: req.params.id
      const penugasan = await penugasanService.getPenugasanByIdBatch(idBatch);
      return res.json({ success: true, penugasan });
    } catch (error) {
      return res.status(500).json({ success: false, message: error.message });
    }
  }

  async getPenugasanByIdKelompok(req, res) {
    try {
      const { idKelompok } = req.params; // ✅ was: id_kelompok
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

  async getPenugasanByIdBatchAndIdPeserta(req, res) {
    try {
      const { idBatch, idPeserta } = req.params;
      const penugasan = await penugasanService.getPenugasanByIdBatchAndByIdPeserta(idBatch, idPeserta);
      if(req.user.status === "Seleksi Berkas") {
        return res.status(403).json({ success: false, message: "Unauthorized!" });
      }
      if (!penugasan) {
        return res.status(404).json({ success: false, message: "Data penugasan peserta tidak ditemukan pada batch tersebut" });
      }
      return res.status(200).json({ success: true, penugasan });
    } catch (error) {
      console.error("Error di controller getPenugasanByIdBatchAndIdPeserta:", error);
      return res.status(500).json({ success: false, message: "Terjadi kesalahan pada server", error: error.message });
    }
  }

  async getPenugasanByIdPenugasan(req, res) {
    try {
      const { idPenugasan } = req.params;
      const { role } = req.user;

      // kurang auth buat peserta!

      const penugasan = await penugasanService.getPenugasanByIdPenugasan(idPenugasan);
      if (!penugasan) {
        return res.status(404).json({ success: false, message: "Data penugasan tidak ditemukan" });
      }
      return res.status(200).json({ success: true, penugasan });

    } catch (error) {
      console.error("Error di controller getPenugasanByIdPenugasan:", error);
      return res.status(500).json({ success: false, message: "Terjadi kesalahan pada server", error: error.message });
    }
  }

  async createPenugasan(req, res) {
    try {
      const penugasan = await penugasanService.createPenugasan(req.body);
      await log({
        id_user: req.body.id_user,
        aksi: "CREATE",
        entitas: "penugasan",
        id_entitas: penugasan.id_penugasan,
        deskripsi: "Membuat tugas untuk id_peserta: " + req.body.id_peserta,
      });
      return res.status(200).json({ success: true, penugasan });
    } catch (error) {
      console.error("error:", error);
      return res.status(500).json({ success: false, message: "Terjadi kesalahan pada server", error: error.message });
    }
  }

  async updatePenugasan(req, res) {
    try {
      const { idPenugasan } = req.params; // ✅ was: req.params.id
      const penugasan = await penugasanService.updatePenugasan(idPenugasan, req.body);
      if (!penugasan) {
        return res.status(404).json({ success: false, message: "Penugasan not found" });
      }
      return res.json({ success: true, penugasan });
    } catch (error) {
      return res.status(500).json({ success: false, message: error.message });
    }
  }

  async deletePenugasan(req, res) {
    try {
      const { idPenugasan } = req.params; // ✅ was: req.params.id
      const penugasan = await penugasanService.deletePenugasan(idPenugasan);
      if (!penugasan) {
        return res.status(404).json({ success: false, message: "Penugasan not found" });
      }
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

      return res.status(200).json({ success: true, message: "File berhasil dikumpulkan", penugasan });
    } catch (error) {
      console.error("Error upload file pengumpulan:", error);
      return res.status(500).json({ success: false, message: error.message });
    }
  }
}

export default new PenugasanController();