import kehadiranServices from "../services/kehadiran-services.js";
import { log } from "../utils/loggers.js";

class KehadiranController {

  async getKehadiranByIdPeserta(req, res) {
    try {
      if (req.user.role === "Peserta") {
        if (req.user.status === "Seleksi Berkas" || Number(req.user.id_peserta) !== Number(req.params.id)) {
          return res.status(403).json({ success: false, message: "Unauthorized!" });
        }
      }

      const kehadiran = await kehadiranServices.getKehadiranByIdPeserta(req.params.id);
      if (!kehadiran) {
        return res.status(404).json({
          success: false,
          message: "Kehadiran tidak ditemukan"
        });
      }
      return res.json({
        success: true,
        kehadiran: kehadiran
      })
    } catch (error) {
      return res.status(500).json({
        success: false,
        message: error.message
      })
    }
  }

  async updateKehadiran(req, res) {
    try {
      const kehadiran = await kehadiranServices.updateKehadiran(req.params.id, req.body);
      if (!kehadiran) {
        return res.status(404).json({
          success: false,
          message: "Kehadiran tidak ditemukan"
        });
      }
      await log({
        id_user: req.user.id_user,
        aksi: "UPDATE",
        entitas: "kehadiran",
        id_entitas: kehadiran.id_kehadiran,
        deskripsi: "Mengubah detail kehadiran",
      });
      return res.json({
        success: true,
        kehadiran: kehadiran
      });

    } catch (error) {
      return res.status(500).json({
        success: false,
        message: error.message
      });
    }
  }
}

export default new KehadiranController();