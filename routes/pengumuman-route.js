import express from 'express';
import pengumumanController from '../controllers/pengumuman-controller.js';
import auth from '../middleware/auth.js';

const router = express.Router();

router.get('/pengumuman',auth("Kalab","Super Admin"), pengumumanController.getPengumuman);

router.get('/pengumuman/:id',auth("Kalab","Super Admin"), pengumumanController.getPengumumanById);

router.get('/pengumuman/batch/:id',auth("Kalab","Super Admin"), pengumumanController.getPengumumanByIdBatch);

router.get('/pengumuman/batch/:idBatch/:idUser',auth("Kalab","Super Admin"), pengumumanController.getPengumumanByIdBatchAndIdUser);

router.get('/pengumuman/user/:id',auth("Kalab","Super Admin"), pengumumanController.getPengumumanByIdUser);

router.post('/pengumuman',auth("Kalab","Super Admin"), pengumumanController.createPengumuman);

router.patch('/pengumuman/:id',auth("Kalab","Super Admin"), pengumumanController.updatePengumuman);

router.delete('/pengumuman/:id',auth("Kalab","Super Admin"), pengumumanController.deletePengumuman);

export default router;