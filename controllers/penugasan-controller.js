import penugasanService from "../services/penugasan-service.js";

class PenugasanController {

  async getRecaptPenugasan(req,res){
    try {
      const penugasan = await penugasanService.getRekapPesertaByBatch(req.params.id);
      return res.json({
        success: true,
        penugasan: penugasan
      });
    } catch (error) {
      return res.status(500).json({
        success: false,
        message: error.message
      })
    }
  }

  async getPenugasanByIdPeserta(req,res){
    try {
      const penugasan = await penugasanService.getTugasByIdPeserta(req.params.id);
      return res.json({
        success: true,
        penugasan: penugasan
      });
    } catch (error) {
      return res.status(500).json({
        success: false,
        message: error.message
      })
    }
  }

  async getPenugasanByIdPenugasan(req,res){
    try {
      const penugasan = await penugasanService.getPenugasanByIdPenugasan(req.params.id);
      return res.json({
        success: true,
        penugasan: penugasan
      });
    } catch (error) {
      return res.status(500).json({
        success: false,
        message: error.message
      })
    }
  }
}

export default new PenugasanController();