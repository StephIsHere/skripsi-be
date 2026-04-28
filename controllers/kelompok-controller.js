import kelompokServices from "../services/kelompok-services.js";
import { log } from "../utils/loggers.js";

class KelompokController {
  async createKelompok(req, res) {
    try {
      const kelompok = await kelompokServices.createKelompok(req.body);
      await log({
        id_user: req.user.id_user,
        aksi: "CREATE",
        entitas: "kelompok",
        id_entitas: kelompok.id_kelompok,
        deskripsi: "Membuat kelompok baru",
      });
      return res.status(200).json({
        success: true,
        kelompok: kelompok,
      });
    } catch (error) {
      console.error("error:", error);
      return res.status(500).json({
        success: false,
        message: "Terjadi kesalahan pada server",
        error: error.message,
      });
    }
  }

  async getKelompokByBatch(req, res) {
    try {
      const kelompok = await kelompokServices.getKelompokByBatch(req.params.id_batch);
      return res.json({
        success: true,
        kelompok: kelompok,
      });
    } catch (error) {
      return res.status(500).json({
        success: false,
        message: error.message,
      });
    }
  }

  async getKelompokById(req, res) {
    try {
      const kelompok = await kelompokServices.getKelompokById(req.params.id);

      if (!kelompok) {
        return res.status(404).json({
          success: false,
          message: "Kelompok tidak ditemukan",
        });
      }

      return res.status(200).json({
        success: true,
        kelompok: kelompok,
      });
    } catch (error) {
      console.error("Error di controller getKelompokById:", error);
      return res.status(500).json({
        success: false,
        message: "Terjadi kesalahan pada server",
        error: error.message,
      });
    }
  }

  async updateKelompok(req, res) {
    try {
      const kelompok = await kelompokServices.updateKelompok(
        req.params.id,
        req.body
      );
      if (!kelompok) {
        return res.status(404).json({
          success: false,
          message: "Kelompok tidak ditemukan",
        });
      }
      await log({
        id_user: req.user.id_user,
        aksi: "UPDATE",
        entitas: "kelompok",
        id_entitas: kelompok.id_kelompok,
        deskripsi: "Mengubah detail kelompok",
      });
      return res.json({
        success: true,
        kelompok: kelompok,
      });
    } catch (error) {
      return res.status(500).json({
        success: false,
        message: error.message,
      });
    }
  }

  async deleteKelompok(req, res) {
    try {
      const kelompok = await kelompokServices.deleteKelompok(req.params.id);
      if (!kelompok) {
        return res.status(404).json({
          success: false,
          message: "Kelompok tidak ditemukan",
        });
      }
      await log({
        id_user: req.user.id_user,
        aksi: "DELETE",
        entitas: "kelompok",
        id_entitas: kelompok.id_kelompok,
        deskripsi: "Menghapus kelompok",
      });
      return res.json({
        success: true,
        message: "Kelompok berhasil dihapus",
      });
    } catch (error) {
      return res.status(500).json({
        success: false,
        message: error.message,
      });
    }
  }

  async addAnggota(req, res) {
    try {
      const { id, id_peserta } = req.params;
      const result = await kelompokServices.addAnggota(id, id_peserta);

      if (result.error) {
        return res.status(400).json({
          success: false,
          message: result.error,
        });
      }
      await log({
        id_user: req.user.id_user,
        aksi: "UPDATE",
        entitas: "kelompok",
        id_entitas: kelompok.id_kelompok,
        deskripsi: "Menambahkan anggota ke kelompok",
      });

      return res.status(200).json({
        success: true,
        message: "Peserta berhasil ditambahkan ke kelompok",
        peserta: result.peserta,
      });
    } catch (error) {
      console.error("Error addAnggota:", error);
      return res.status(500).json({
        success: false,
        message: error.message,
      });
    }
  }

  async removeAnggota(req, res) {
    try {
      const { id, id_peserta } = req.params;
      const peserta = await kelompokServices.removeAnggota(id, id_peserta);

      if (!peserta) {
        return res.status(404).json({
          success: false,
          message: "Peserta bukan anggota kelompok ini",
        });
      }
      await log({
        id_user: req.user.id_user,
        aksi: "DELETE",
        entitas: "kelompok",
        id_entitas: kelompok.id_kelompok,
        deskripsi: "Menghapus anggota dari kelompok",
      });
      return res.status(200).json({
        success: true,
        message: "Peserta berhasil dikeluarkan dari kelompok",
        peserta,
      });
    } catch (error) {
      console.error("Error removeAnggota:", error);
      return res.status(500).json({
        success: false,
        message: error.message,
      });
    }
  }
}

export default new KelompokController();