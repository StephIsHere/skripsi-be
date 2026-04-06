import express from 'express';
import sistemOperasiController from '../controllers/sistem-operasi-controller.js';

const router = express.Router();

router.get('/so', sistemOperasiController.getAllSistemOperasi);

router.get('/so/:id', sistemOperasiController.getSistemOperasiById);

router.post('/so/', sistemOperasiController.createSistemOperasi);

router.patch('/so/:id', sistemOperasiController.updateSistemOperasi);

router.delete('/so/:id', sistemOperasiController.deleteSistemOperasi);

export default router;