import express from 'express';
import batchController from '../controllers/batch-controller.js';
import auth from '../middleware/auth.js';

const router = express.Router();

router.get('/batch', auth("Kalab","SA"), batchController.getBatch);

router.get('/batch/active',auth("Peserta","Kalab","SA"), batchController.getActiveBatch);

router.get('/batch/:id',auth("Kalab","SA"), batchController.getBatchById);

router.post('/batch',auth("Kalab","SA"), batchController.createBatch);

router.patch('/batch/:id',auth("Kalab","SA"), batchController.updateBatch);

router.delete('/batch/:id',auth("Kalab","SA"), batchController.deleteBatch);

router.patch('/batch/:id/activate', auth("Kalab","SA"), batchController.activateBatch);

router.patch('/batch/:id/deactivate', auth("Kalab","SA"), batchController.deActivateBatch);

export default router;