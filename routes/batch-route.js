import express from 'express';
import batchController from '../controllers/batch-controller.js';
import auth from '../middleware/auth.js';

const router = express.Router();

router.get('/batch', auth("Kalab","Super Admin"), batchController.getBatch);

router.get('/batch/active',auth("Peserta","Kalab","Super Admin"), batchController.getActiveBatch);

router.get('/batch/:id',auth("Kalab","Super Admin"), batchController.getBatchById);

router.post('/batch',auth("Kalab","Super Admin"), batchController.createBatch);

router.patch('/batch/:id',auth("Kalab","Super Admin"), batchController.updateBatch);

router.delete('/batch/:id',auth("Kalab","Super Admin"), batchController.deleteBatch);

router.patch('/batch/:id/activate', auth("Kalab","Super Admin"), batchController.activateBatch);

router.patch('/batch/:id/deactivate', auth("Kalab","Super Admin"), batchController.deActivateBatch);

export default router;