import penugasanService from "../services/penugasan-service.js";

class PenugasanController {

  async getBobot(req,res){
    try {
      const bobot = await penugasanService.getRekapPesertaByBatch(req.params.id);
      return res.json({
        success: true,
        bobot: bobot
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