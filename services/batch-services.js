import Batch from "../models/batch-model.js";

class Batchservice {
  async getAllBatch() {
    return await Batch.findAll();
  }

  async getBatchById(id) {
    return await Batch.findOne({ where: { id_batch: id } });
  }

  async createBatch(data) {
    return await Batch.create(data);
  }

  async updateBatch(id, data) {
    const batch = await Batch.findOne({ where: { id_batch: id } });
    if (!batch) return null;
    await batch.update(data);
    return batch;
  }

  async deleteBatch(id) {
    const batch = await Batch.findOne({ where: { id_batch: id } });
    if (!batch) return null;
    await batch.destroy();
    return batch;
  }
}

export default new Batchservice();