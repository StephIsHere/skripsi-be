import kehadiranServices from "../services/kehadiran-services.js";
import { log } from "../utils/loggers.js";

class KehadiranController {

  async getKehadiranByIdPeserta(req, res) {
    try {
      const kehadiran = await kehadiranServices.getKehadiranByIdPeserta(req.params.id);
      if (!kehadiran) {
        return res.status(404).json({
          success: false,
          message: "Kehadiran not found"
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

  async createKehadiran(req, res) {
    try {
      const kehadiran = await kehadiranServices.createKehadiran(req.body);
      return res.status(201).json({
        success: true,
        data: kehadiran
      });
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
          message: "Kehadiran not found"
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

  async deleteKehadiran(req, res) {
    try {
      const kehadiran = await kehadiranServices.deleteKehadiran(req.params.id);
      if (!kehadiran) {
        return res.status(404).json({
          success: false,
          message: "Kehadiran not found"
        });
      }
      await log({
        id_user: req.user.id_user,
        aksi: "DELETE",
        entitas: "kehadiran",
        id_entitas: kehadiran.id_kehadiran,
        deskripsi: "Menghapus detail kehadiran",
      });
      return res.json({
        success: true,
        message: "Kehadiran deleted successfully"
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