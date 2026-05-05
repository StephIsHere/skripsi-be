import express from 'express';
import komentarTugasController from '../controllers/komentar-tugas.controller.js';
import auth from '../middleware/auth.js';

const router = express.Router();

router.get('/komentar-tugas/:id',auth("Kalab","SA"), komentarTugasController.getKomentarTugas);

router.post('/komentar-tugas',auth("Peserta","Kalab","SA"), komentarTugasController.createKomentar);

router.delete('/komentar-tugas/:id',auth("Kalab","SA"), komentarTugasController.deleteKomentarPengumuman);

export default router;