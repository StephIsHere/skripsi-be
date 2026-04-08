import express from 'express';
import komentarTugasController from '../controllers/komentar-tugas.controller.js';

const router = express.Router();

router.get('/komentar-tugas/:id', komentarTugasController.getKomentarTugas);

router.post('/komentar-tugas', komentarTugasController.createKomentar);

router.delete('/komentar-tugas/:id', komentarTugasController.deleteKomentarPengumuman);

export default router;