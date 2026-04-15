import express from 'express';
import pengumumanController from '../controllers/pengumuman-controller.js';

const router = express.Router();

router.get('/pengumuman', pengumumanController.getPengumuman);

router.get('/pengumuman/:id', pengumumanController.getPengumumanById);

router.get('/pengumuman/batch/:id', pengumumanController.getPengumumanByIdBatch);

router.get('/pengumuman/batch/:idBatch/:idUser', pengumumanController.getPengumumanByIdBatchAndIdUser);

router.get('/pengumuman/user/:id', pengumumanController.getPengumumanByIdUser);

router.post('/pengumuman', pengumumanController.createPengumuman);

router.patch('/pengumuman/:id', pengumumanController.updatePengumuman);

router.delete('/pengumuman/:id', pengumumanController.deletePengumuman);

export default router;