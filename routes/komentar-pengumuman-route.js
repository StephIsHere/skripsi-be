import express from 'express';
import komentarPengumumanController from '../controllers/komentar-pengumuman-controller.js';
import auth from '../middleware/auth.js';

const router = express.Router();

router.get('/komentar-pengumuman/:id',auth("Peserta","Kalab","Super Admin"), komentarPengumumanController.getKomentarPengumuman);

router.post('/komentar-pengumuman',auth("Peserta","Kalab","Super Admin"), komentarPengumumanController.createKomentar);

router.delete('/komentar-pengumuman/:id',auth("Kalab","Super Admin"), komentarPengumumanController.deleteKomentarPengumuman);

export default router;