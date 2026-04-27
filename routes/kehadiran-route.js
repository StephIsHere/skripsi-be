import express from 'express';
import kehadiranController from '../controllers/kehadiran-controller.js';
import auth from '../middleware/auth.js';

const router = express.Router();

router.get('/kehadiran/:id',auth("Peserta","Kalab","SA"), kehadiranController.getKehadiranByIdPeserta);

router.post('/kehadiran',auth("Kalab","SA"), kehadiranController.createKehadiran);

router.patch('/kehadiran/:id',auth("Peserta","Kalab","SA"), kehadiranController.updateKehadiran);

router.delete('/kehadiran/:id',auth("Kalab","SA"), kehadiranController.deleteKehadiran);

export default router;