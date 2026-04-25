import express from 'express';
import komentarTugasController from '../controllers/komentar-tugas.controller.js';
import auth from '../middleware/auth.js';

const router = express.Router();

router.get('/komentar-tugas/:id',auth("Kalab","Super Admin"), komentarTugasController.getKomentarTugas);

router.post('/komentar-tugas',auth("Peserta","Kalab","Super Admin"), komentarTugasController.createKomentar);

router.delete('/komentar-tugas/:id',auth("Kalab","Super Admin"), komentarTugasController.deleteKomentarPengumuman);

export default router;