import penugasanService from "../services/penugasan-service.js";

class PenugasanController {

  async getPenugasanByIdBatch(req, res) {
    try {
      const penugasan = await penugasanService.getPenugasanByIdBatch(req.params.id);
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

  async getPenugasanByIdBatchAndIdPeserta(req, res) {
    try {
      const { idBatch, idPeserta } = req.params;

      const penugasan = await penugasanService.getPenugasanByIdBatchAndByIdPeserta(idBatch, idPeserta);

      if (!penugasan) {
        return res.status(404).json({
          success: false,
          message: 'Data penugasan peserta tidak ditemukan pada batch tersebut'
        });
      }

      return res.status(200).json({
        success: true,
        penugasan: penugasan
      });

    } catch (error) {
      console.error('Error di controller getPenugasanByIdPeserta:', error);
      return res.status(500).json({
        success: false,
        message: 'Terjadi kesalahan pada server',
        error: error.message
      });
    }
  }

  async getPenugasanByIdPenugasan(req, res) {
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