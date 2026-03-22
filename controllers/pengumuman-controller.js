import pengumumanServices from "../services/pengumuman-services.js";

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

  async createPengumuman(req, res) {
    try {
      const pengumuman = await pengumumanServices.createPengumuman(req.body);
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