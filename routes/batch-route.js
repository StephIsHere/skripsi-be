import express from 'express';
import batchController from '../controllers/batch-controller.js';

const router = express.Router();

router.get('/batch', batchController.getBatch);

router.get('/batch/:id', batchController.getBatchById);

router.post('/batch/', batchController.createBatch);

router.patch('/batch/:id', batchController.updateBatch);

router.delete('/batch/:id', batchController.deleteBatch);

export default router;