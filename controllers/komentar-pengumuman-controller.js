import komentarPengumumanServices from "../services/komentar-pengumuman-services.js";
import { log } from "../utils/loggers.js";

class KomentarPengumumanController {
  async getKomentarPengumuman(req,res){
    try {
      const komentar = await komentarPengumumanServices.getKomentarByPengumuman(req.params.id);
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
      const komentar = await komentarPengumumanServices.createKomentar(req.body);
      await log({
        id_user: req.user.id_user,
        aksi: "CREATE",
        entitas: "komentar_pengumuman",
        id_entitas: komentar.id_komentar_pengumuman,
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
      const komentar = await komentarPengumumanServices.deleteKomentar(req.params.id);
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

export default new KomentarPengumumanController();