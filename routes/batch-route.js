import express from 'express';
import batchController from '../controllers/batch-controller.js';
import auth from '../middleware/auth.js';

const router = express.Router();

router.get('/batch', auth("Admin","Kalab","SA"), batchController.getBatch);

router.get('/batch/active', auth(),batchController.getActiveBatch);

router.get('/batch/:id',auth("Admin","Kalab","SA"), batchController.getBatchById);

router.post('/batch',auth("Kalab","SA"), batchController.createBatch);

router.patch('/batch/:id',auth("Kalab","SA"), batchController.updateBatch);

router.patch('/batch/:id/activate', auth("Kalab","SA"), batchController.activateBatch);

router.patch('/batch/:id/deactivate', auth("Kalab","SA"), batchController.deActivateBatch);

export default router;