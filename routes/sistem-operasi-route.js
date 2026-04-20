import express from 'express';
import sistemOperasiController from '../controllers/sistem-operasi-controller.js';
import auth from '../middleware/auth.js';

const router = express.Router();

router.get('/so',auth("Kalab","Super Admin"), sistemOperasiController.getAllSistemOperasi);

router.get('/so/:id',auth("Kalab","Super Admin"), sistemOperasiController.getSistemOperasiById);

router.post('/so/',auth("Kalab","Super Admin"), sistemOperasiController.createSistemOperasi);

router.patch('/so/:id',auth("Kalab","Super Admin"), sistemOperasiController.updateSistemOperasi);

router.delete('/so/:id',auth("Kalab","Super Admin"), sistemOperasiController.deleteSistemOperasi);

export default router;