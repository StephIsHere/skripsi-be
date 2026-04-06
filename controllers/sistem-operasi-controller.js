import soalServices from "../services/soal-services.js";
import sistemOperasiServices from "../services/sistem-operasi-services.js";

class SistemOperasiController {

  async getAllSistemOperasi(req,res){
    try {
      const sistemOperasi = await sistemOperasiServices.getAllSistemOperasi();
      return res.json({
        success: true,
        sistemOperasi: sistemOperasi
      });
    } catch (error) {
      return res.status(500).json({
        success: false,
        message: error.message
      })
    }
  }

  async getSistemOperasiById(req,res){
    try {
      const sistemOperasi = await sistemOperasiServices.getSistemOperasiById(req.params.id);
      if(!sistemOperasi){
        return res.status(404).json({
          success: false,
          message: "Sistem Operasi not found"
        });
      }

      return res.json({
        success: true,
        sistemOperasi: sistemOperasi
      })
    } catch (error) {
      return res.status(500).json({
        success: false,
        message: error.message
      })
    }
  }

  async createSistemOperasi(req,res){
    try {
      const sistemOperasi = await sistemOperasiServices.createSistemOperasi(req.body);
      return res.status(201).json({
        success: true,
        sistemOperasi: sistemOperasi
      });
    } catch (error) {
      return res.status(500).json({
        success: false,
        message: error.message
      })
    }
  }

  async updateSistemOperasi(req,res){
    try {
      const sistemOperasi = await sistemOperasiServices.updateSistemOperasi(req.params.id, req.body);
      if (!sistemOperasi) {
        return res.status(404).json({
          success: false,
          message: "Sistem Operasi not found"
        });
      }

      return res.json({
        success: true,
        sistemOperasi: sistemOperasi
      });

    } catch (error) {
      return res.status(500).json({
        success: false,
        message: error.message
      });
    }
  }

  async deleteSistemOperasi(req,res) {
    try {
      const sistemOperasi = await sistemOperasiServices.deleteSistemOperasi(req.params.id);
      if(!sistemOperasi){
        return res.status(404).json({
          success: false,
          message: "Sistem Operasi not found"
        });
      }

      return res.json({
        success: true,
        message: "Sistem Operasi deleted successfully"
      });

    } catch (error) {
      return res.status(500).json({
        success: false,
        message: error.message
      });
    }
  }
}

export default new SistemOperasiController();