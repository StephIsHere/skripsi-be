import express from 'express';
import komentarPengumumanController from '../controllers/komentar-pengumuman-controller.js';

const router = express.Router();

router.get('/komentar-pengumuman/:id', komentarPengumumanController.getKomentarPengumuman);

router.post('/komentar-pengumuman', komentarPengumumanController.createKomentar);

router.delete('/komentar-pengumuman/:id', komentarPengumumanController.deleteKomentarPengumuman);

export default router;