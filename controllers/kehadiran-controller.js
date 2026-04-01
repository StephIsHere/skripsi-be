import kehadiranServices from "../services/kehadiran-services.js";

class KehadiranController {

  async getKehadiranByIdPeserta(req,res){
    try {
      const kehadiran = await kehadiranServices.getKehadiranByIdPeserta(req.params.id);
      if(!kehadiran){
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

  async createKehadiran(req,res){
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

  async updateKehadiran(req,res){
    try {
      const kehadiran = await kehadiranServices.updateKehadiran(req.params.id, req.body);
      if (!kehadiran) {
        return res.status(404).json({
          success: false,
          message: "Kehadiran not found"
        });
      }

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

  async deleteKehadiran(req,res) {
    try {
      const kehadiran = await kehadiranServices.deleteKehadiran(req.params.id);
      if(!kehadiran){
        return res.status(404).json({
          success: false,
          message: "Kehadiran not found"
        });
      }

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