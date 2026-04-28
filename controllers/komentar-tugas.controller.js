import komentarTugasServices from "../services/komentar-tugas.services.js";
import { log } from "../utils/loggers.js";

class KomentarTugasController {
  async getKomentarTugas(req, res) {
    try {
      const komentar = await komentarTugasServices.getKomentarByIdTugas(req.params.id);
      if (!komentar) {
        return res.status(404).json({
          success: false,
          message: "Komentar not found"
        });
      }
      return res.json({
        success: true,
        komentar: komentar
      });
    } catch (error) {
      return res.status(500).json({
        success: false,
        message: error.message
      })
    }
  }

  async createKomentar(req, res) {
    try {
      const komentar = await komentarTugasServices.createKomentar(req.body);
      await log({
        id_user: req.user.id_user,
        aksi: "CREATE",
        entitas: "komentar_tugas",
        id_entitas: komentar.id_komentar_tugas,
        deskripsi: komentar.isi_komentar,
      });
      return res.status(201).json({
        success: true,
        komentar: komentar
      });
    } catch (error) {
      return res.status(500).json({
        success: false,
        message: error.message
      })
    }
  }

  async deleteKomentarPengumuman(req, res) {
    try {
      const komentar = await komentarTugasServices.deleteKomentar(req.params.id);
      if (!komentar) {
        return res.status(404).json({
          success: false,
          message: "Komentar not found"
        });
      }

      return res.json({
        success: true,
        message: "Komentar deleted successfully"
      });

    } catch (error) {
      return res.status(500).json({
        success: false,
        message: error.message
      });
    }
  }
}

export default new KomentarTugasController();