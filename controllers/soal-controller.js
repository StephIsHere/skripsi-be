import soalServices from "../services/soal-services.js";

class SoalController {

  async getSoal(req,res){
    try {
      const soal = await soalServices.getAllSoal();
      return res.json({
        success: true,
        soal: soal
      });
    } catch (error) {
      return res.status(500).json({
        success: false,
        message: error.message
      })
    }
  }

  async getSoalById(req,res){
    try {
      const soal = await soalServices.getSoalById(req.params.id);
      if(!soal){
        return res.status(404).json({
          success: false,
          message: "Soal not found"
        });
      }

      return res.json({
        success: true,
        soal: soal
      })
    } catch (error) {
      return res.status(500).json({
        success: false,
        message: error.message
      })
    }
  }

  async createSoal(req,res){
    try {
      const soal = await soalServices.createSoal(req.body);
      return res.status(201).json({
        success: true,
        soal: soal
      });
    } catch (error) {
      return res.status(500).json({
        success: false,
        message: error.message
      })
    }
  }

  async updateSoal(req,res){
    try {
      const soal = await soalServices.updateSoal(req.params.id, req.body);
      if (!soal) {
        return res.status(404).json({
          success: false,
          message: "Soal not found"
        });
      }

      return res.json({
        success: true,
        soal: soal
      });

    } catch (error) {
      return res.status(500).json({
        success: false,
        message: error.message
      });
    }
  }

  async deleteSoal(req,res) {
    try {
      const soal = await soalServices.deleteSoal(req.params.id);
      if(!soal){
        return res.status(404).json({
          success: false,
          message: "Soal not found"
        });
      }

      return res.json({
        success: true,
        message: "Soal deleted successfully"
      });

    } catch (error) {
      return res.status(500).json({
        success: false,
        message: error.message
      });
    }
  }
}

export default new SoalController();