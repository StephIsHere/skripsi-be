import express from 'express';
import pengumumanController from '../controllers/pengumuman-controller.js';
import auth from '../middleware/auth.js';

const router = express.Router();

// Buat ambil detail pengumuman
router.get('/pengumuman/:id',auth("Peserta","Kalab","Super Admin"), pengumumanController.getPengumumanById);

// Buat ambil riwayat pengumuman
router.get('/pengumuman/batch/:idBatch/:idUser',auth("Peserta","Kalab","Super Admin"), pengumumanController.getPengumumanByIdBatchAndIdUser);

// Buat ambil pengumuman di batch tertentu
router.get('/pengumuman/batch/:id',auth("Admin","Kalab","Super Admin"), pengumumanController.getPengumumanByIdBatch);

// Post buat bikin pengumuman baru
router.post('/pengumuman',auth("Admin","Kalab","Super Admin"), pengumumanController.createPengumuman);

// Patch buat edit pengumuman
router.patch('/pengumuman/:id',auth("Admin","Kalab","Super Admin"), pengumumanController.updatePengumuman);

// Delete buat delete pengumuan
router.delete('/pengumuman/:id',auth("Admin","Kalab","Super Admin"), pengumumanController.deletePengumuman);

export default router;

// done