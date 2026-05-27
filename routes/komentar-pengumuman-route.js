import express from 'express';
import komentarPengumumanController from '../controllers/komentar-pengumuman-controller.js';
import auth from '../middleware/auth.js';

const router = express.Router();

router.get('/komentar-pengumuman/:id',auth("Peserta","Admin","Kalab","SA"), komentarPengumumanController.getKomentarPengumuman);

router.post('/komentar-pengumuman',auth("Peserta","Admin","Kalab","SA"), komentarPengumumanController.createKomentar);

export default router;