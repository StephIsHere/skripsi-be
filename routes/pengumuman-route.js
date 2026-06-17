import express from 'express';
import pengumumanController from '../controllers/pengumuman-controller.js';
import auth from '../middleware/auth.js';

const router = express.Router();

// Mengambil daftar pengumuman public
router.get('/pengumuman/public', pengumumanController.getPublicPengumuman);

// Mengambil detail suatu pengumuman
router.get('/pengumuman/:id',auth("Peserta","Admin","Kalab","SA"), pengumumanController.getPengumumanById);

// Mengambil riwayat pengumuman peserta
router.get('/pengumuman/batch/:idBatch/:idUser',auth("Peserta","Admin","Kalab","SA"), pengumumanController.getPengumumanByIdBatchAndIdUser);

// Mengambil daftar pengumuman pada suatu batch
router.get('/pengumuman/batch/:id',auth("Admin","Kalab","SA"), pengumumanController.getPengumumanByIdBatch);

// Membuat pengumuman baru
router.post('/pengumuman',auth("Admin","Kalab","SA"), pengumumanController.createPengumuman);

// Mengubah data suatu pengumuman 
router.patch('/pengumuman/:id',auth("Admin","Kalab","SA"), pengumumanController.updatePengumuman);

// Menghapus data suatu pengumuman
router.delete('/pengumuman/:id',auth("Admin","Kalab","SA"), pengumumanController.deletePengumuman);

export default router;