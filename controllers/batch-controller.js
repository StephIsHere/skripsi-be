import batchServices from "../services/batch-services.js";
import { log } from "../utils/loggers.js";

class BatchController {

  async getBatch(req, res) {
    try {
      const batches = await batchServices.getAllBatch();
      return res.json({
        success: true,
        batch: batches
      });
    } catch (error) {
      return res.status(500).json({
        success: false,
        message: error.message
      });
    }
  }

  async getActiveBatch(req, res) {
    try {
      const batch = await batchServices.getActiveBatch();
      return res.json({
        success: true,
        batch: batch
      });
    } catch (error) {
      return res.status(500).json({
        success: false,
        message: error.message
      });
    }
  }

  async getBatchById(req, res) {
    try {
      const batch = await batchServices.getBatchById(req.params.id);
      if (!batch) {
        return res.status(404).json({
          success: false,
          message: "Batch not found"
        });
      }
      return res.json({
        success: true,
        batch: batch
      })
    } catch (error) {
      return res.status(500).json({
        success: false,
        message: error.message
      })
    }
  }

  async createBatch(req, res) {
    try {
      const batch = await batchServices.createBatch(req.body);
      await log({
        id_user: req.user.id_user,
        aksi: "CREATE",
        entitas: "batch",
        id_entitas: batch.id_batch,
        deskripsi: "Membuat batch baru",
      });
      return res.status(201).json({
        success: true,
        batch: batch
      });
    } catch (error) {
      return res.status(500).json({
        success: false,
        message: error.message
      })
    }
  }

  async updateBatch(req, res) {
    try {
      const batch = await batchServices.updateBatch(req.params.id, req.body);
      if (!batch) {
        return res.status(404).json({
          success: false,
          message: "Batch not found"
        });
      }
      await log({
        id_user: req.user.id_user,
        aksi: "UPDATE",
        entitas: "batch",
        id_entitas: batch.id_batch,
        deskripsi: "Mengubah detail batch",
      });
      return res.json({
        success: true,
        batch: batch
      });
    } catch (error) {
      return res.status(500).json({
        success: false,
        message: error.message
      });
    }
  }

  async deleteBatch(req, res) {
    try {
      const batch = await batchServices.deleteBatch(req.params.id);
      if (!batch) {
        return res.status(404).json({
          success: false,
          message: "Batch not found"
        });
      }
      await log({
        id_user: req.user.id_user,
        aksi: "DELETE",
        entitas: "batch",
        id_entitas: batch.id_batch,
        deskripsi: "Menghapus data batch",
      });
      return res.json({
        success: true,
        message: "Batch deleted successfully"
      });

    } catch (error) {
      return res.status(500).json({
        success: false,
        message: error.message
      });
    }
  }

  async activateBatch(req, res) {
    try {
      const { id } = req.params;
      const batch = await batchServices.activateBatch(id);
      await log({
        id_user: req.user.id_user,
        aksi: "UPDATE",
        entitas: "batch",
        id_entitas: batch.id_batch,
        deskripsi: "Mengaktifkan batch",
      });
      return res.json({
        success: true,
        message: "Membuka batch",
        batch: batch
      });
    } catch (error) {
      return res.status(500).json({
        success: false,
        message: error.message
      });
    }
  }

  async deActivateBatch(req, res) {
    try {
      const { id } = req.params;
      const batch = await batchServices.deactivateBatch(id);
      await log({
        id_user: req.user.id_user,
        aksi: "UPDATE",
        entitas: "batch",
        id_entitas: batch.id_batch,
        deskripsi: "Menutup seluruh batch",
      });
      return res.json({
        success: true,
        message: "Batch berhasil dinonaktifkan",
        batch: batch
      });
    } catch (error) {
      console.log(error.message)
      return res.status(500).json({
        success: false,
        message: error.message
      });
    }
  }
}

export default new BatchController();