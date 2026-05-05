import Batch from "../models/batch-model.js";

class Batchservice {
  async getAllBatch() {
    return await Batch.findAll({
      order: [['createdAt', 'DESC']]
    });
  }

  async getBatchById(id) {
    return await Batch.findOne({ where: { id_batch: id } });
  }

  async getActiveBatch() {
    return await Batch.findOne({ where: { status: true } });
  }

  async activateBatch(id) {
    await Batch.update({ status: false }, { where: {} });
    await Batch.update(
      { status: true },
      { where: { id_batch: id } }
    );
    return await this.getActiveBatch();
  }

  async deactivateBatch(id) {
    await Batch.update(
      { status: false },
      { where: { id_batch: id } }
    );
    return await this.getBatchById(id);
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