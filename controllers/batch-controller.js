import batchServices from "../services/batch-services.js";

class BatchController {
  // async getBatch(req, res) {
  //   try {
  //     const batches = await batchServices.getAllBatch();
  //     return res.json({
  //       success: true,
  //       batch: batches
  //     });
  //   } catch (error) {
  //     return res.status(500).json({
  //       success: false,
  //       message: error.message
  //     });
  //   }
  // }

  async getBatch(req, res) {
  try {
    console.log("GET BATCH HIT"); // 🔥

    const batches = await batchServices.getAllBatch();

    console.log("DATA:", batches); // 🔥

    return res.json({
      success: true,
      batch: batches
    });
  } catch (error) {
    console.log("ERROR GET BATCH:", error); // 🔥 INI KUNCI
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
}

export default new BatchController();