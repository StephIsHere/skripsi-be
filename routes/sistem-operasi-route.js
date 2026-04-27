import express from 'express';
import sistemOperasiController from '../controllers/sistem-operasi-controller.js';
import auth from '../middleware/auth.js';

const router = express.Router();

router.get('/so',auth("Admin","Kalab","SA"), sistemOperasiController.getAllSistemOperasi);

router.get('/so/:id',auth("Admin","Kalab","SA"), sistemOperasiController.getSistemOperasiById);

router.post('/so/',auth("Admin","Kalab","SA"), sistemOperasiController.createSistemOperasi);

router.patch('/so/:id',auth("Admin","Kalab","SA"), sistemOperasiController.updateSistemOperasi);

router.delete('/so/:id',auth("Admin","Kalab","SA"), sistemOperasiController.deleteSistemOperasi);

export default router;