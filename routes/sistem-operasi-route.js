import express from 'express';
import sistemOperasiController from '../controllers/sistem-operasi-controller.js';
import auth from '../middleware/auth.js';

const router = express.Router();

router.get('/so',auth("Admin","Kalab","Super Admin"), sistemOperasiController.getAllSistemOperasi);

router.get('/so/:id',auth("Admin","Kalab","Super Admin"), sistemOperasiController.getSistemOperasiById);

router.post('/so/',auth("Admin","Kalab","Super Admin"), sistemOperasiController.createSistemOperasi);

router.patch('/so/:id',auth("Admin","Kalab","Super Admin"), sistemOperasiController.updateSistemOperasi);

router.delete('/so/:id',auth("Admin","Kalab","Super Admin"), sistemOperasiController.deleteSistemOperasi);

export default router;