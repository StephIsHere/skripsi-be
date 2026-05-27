import express from 'express';
import kehadiranController from '../controllers/kehadiran-controller.js';
import auth from '../middleware/auth.js';

const router = express.Router();

router.get('/kehadiran/:id',auth("Peserta","Admin","Kalab","SA"), kehadiranController.getKehadiranByIdPeserta);

router.patch('/kehadiran/:id',auth("Peserta","Admin","Kalab","SA"), kehadiranController.updateKehadiran);

export default router;