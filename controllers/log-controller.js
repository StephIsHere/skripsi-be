import logService from "../services/log-services.js";

class LogController {
  async getAllLog(req, res) {
    try {
      const logs = await logService.getAllLog();
      return res.json({
        success: true,
        log: logs,
      });
    } catch (error) {
      console.error("Error getLogsByUser:", error);
      return res.status(500).json({
        success: false,
        message: "Terjadi kesalahan pada server",
        error: error.message,
      });
    }
  }
}

export default new LogController();

