import pesertaServices from "../services/peserta-services.js";

class PesertaController {

  async getPeserta(req,res){
    try {
      const peserta = await pesertaServices.getAllPeserta();
      return res.json({
        success: true,
        data: peserta
      });
    } catch (error) {
      return res.status(500).json({
        success: false,
        message: error.message
      })
    }
  }

  async getPesertaById(req,res){
    try {
      const peserta = await pesertaServices.getPesertaById(req.params.id);
      if(!peserta){
        return res.status(404).json({
          success: false,
          message: "Peserta not found"
        });
      }

      return res.json({
        success: true,
        data: peserta
      })
    } catch (error) {
      return res.status(500).json({
        success: false,
        message: error.message
      })
    }
  }

  async createPeserta(req,res){
    try {
      const peserta = await pesertaServices.createPeserta(req.body);
      return res.status(201).json({
        success: true,
        data: peserta
      });
    } catch (error) {
      return res.status(500).json({
        success: false,
        message: error.message
      })
    }
  }

  async updatePeserta(req,res){
    try {
      const peserta = await pesertaServices.updatePeserta(req.params.id, req.body);
      if (!peserta) {
        return res.status(404).json({
          success: false,
          message: "Peserta not found"
        });
      }

      return res.json({
        success: true,
        data: peserta
      });

    } catch (error) {
      return res.status(500).json({
        success: false,
        message: error.message
      });
    }
  }

  async deletePeserta(req,res) {
    try {
      const peserta = await pesertaServices.deletePeserta(req.params.id);
      if(!peserta){
        return res.status(404).json({
          success: false,
          message: "Peserta not found"
        });
      }

      return res.json({
        success: true,
        message: "Peserta deleted successfully"
      });

    } catch (error) {
      return res.status(500).json({
        success: false,
        message: error.message
      });
    }
  }

  async getPesertaByBatch(req,res){
    try {
      const peserta = await pesertaServices.getPesertaByBatch(req.params.id);
      if(!peserta){
        return res.status(404).json({
          success: false,
          message: "Peserta not found"
        });
      }
      return res.json({
        success: true,
        peserta: peserta
      })
    } catch (error) {
      return res.status(500).json({
        success: false,
        message: error.message
      })
    }
  }

  async getPesertaByIdUser(req,res){
    try {
      const peserta = await pesertaServices.getPesertaByIdUser(req.params.id);
      if(!peserta){
        return res.status(404).json({
          success: false,
          message: "Peserta not found"
        });
      }
      return res.json({
        success: true,
        peserta: peserta
      })
    } catch (error) {
      return res.status(500).json({
        success: false,
        message: error.message
      })
    }
  }
}

export default new PesertaController();