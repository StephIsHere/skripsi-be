import pengumumanServices from "../services/pengumuman-services.js";
import userServices from "../services/user-services.js";
import { log } from "../utils/loggers.js";

class PengumumanController {
  async getPengumuman(req, res) {
    try {
      const pengumumans = await pengumumanServices.getAllPengumuman();
      return res.json({
        success: true,
        pengumuman: pengumumans
      });
    } catch (error) {
      return res.status(500).json({
        success: false,
        message: error.message
      })
    }
  }

  async getPengumumanById(req, res) {
    try {
      const pengumuman = await pengumumanServices.getPengumumanById(req.params.id);
      if (!pengumuman) {
        return res.status(404).json({
          success: false,
          message: "Pengumuman not found"
        });
      }

      return res.json({
        success: true,
        pengumuman: pengumuman
      })
    } catch (error) {
      return res.status(500).json({
        success: false,
        message: error.message
      })
    }
  }

  async getPengumumanByIdBatch(req, res) {
    try {
      const pengumuman = await pengumumanServices.getPengumumanByIdBatch(req.params.id);
      if (!pengumuman) {
        return res.status(404).json({
          success: false,
          message: "Pengumuman not found"
        });
      }
      return res.json({
        success: true,
        pengumuman: pengumuman
      })
    } catch (error) {
      return res.status(500).json({
        success: false,
        message: error.message
      })
    }
  }

  async getPengumumanByIdBatchAndIdUser(req, res) {
    try {
      const { idBatch, idUser } = req.params;
      const pengumuman = await pengumumanServices.getPengumumanByIdBatchAndIdUser(idBatch, idUser);
      if (!pengumuman) {
        return res.status(404).json({
          success: false,
          message: "Pengumuman not found"
        });
      }
      return res.json({
        success: true,
        pengumuman: pengumuman
      })
    } catch (error) {
      return res.status(500).json({
        success: false,
        message: error.message
      })
    }
  }

  async getPengumumanByIdUser(req, res) {
    try {
      const pengumuman = await pengumumanServices.getPengumumanByIdUser(req.params.id);
      if (!pengumuman) {
        return res.status(404).json({
          success: false,
          message: "Pengumuman not found"
        });
      }
      return res.json({
        success: true,
        pengumuman: pengumuman
      })
    } catch (error) {
      return res.status(500).json({
        success: false,
        message: error.message
      })
    }
  }

  async createPengumuman(req, res) {
    try {
      const pengumuman = await pengumumanServices.createPengumuman(req.body);
      await log({
        id_user: req.body.id_user,
        aksi: "CREATE",
        entitas: "pengumuman",
        id_entitas: pengumuman.id_pengumuman,
        deskripsi: "Judul : " + pengumuman.judul,
      });
      return res.status(201).json({
        success: true,
        pengumuman: pengumuman
      });
    } catch (error) {
      return res.status(500).json({
        success: false,
        message: error.message
      })
    }
  }

  async updatePengumuman(req, res) {
    try {
      const pengumuman = await pengumumanServices.updatePengumuman(req.params.id, req.body);
      const penerima_pengumuman =  [];
      for (let i = 0; i < req.body.penerima.length; i++) {
        let penerima = await userServices.getUserById(req.body.penerima[i]);
        penerima_pengumuman.push(penerima.nama);
      }
      await log({
        id_user: req.body.id_user,
        aksi: "UPDATE",
        entitas: "pengumuman",
        id_entitas: pengumuman.id_pengumuman,
        deskripsi: "Judul : " + pengumuman.judul + ", penerima : " + penerima_pengumuman,
      });
      if (!pengumuman) {
        return res.status(404).json({
          success: false,
          message: "Pengumuman not found"
        });
      }
      return res.json({
        success: true,
        pengumuman: pengumuman
      });
    } catch (error) {
      return res.status(500).json({
        success: false,
        message: error.message
      });
    }
  }

  async deletePengumuman(req, res) {
    try {
      const pengumuman = await pengumumanServices.deletePengumuman(req.params.id);
      if (!pengumuman) {
        return res.status(404).json({
          success: false,
          message: "Pengumuman not found"
        });
      }

      return res.json({
        success: true,
        message: "Pengumuman deleted successfully"
      });

    } catch (error) {
      return res.status(500).json({
        success: false,
        message: error.message
      });
    }
  }
}

export default new PengumumanController();