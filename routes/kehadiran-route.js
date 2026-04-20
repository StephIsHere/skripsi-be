import express from 'express';
import kehadiranController from '../controllers/kehadiran-controller.js';
import auth from '../middleware/auth.js';

const router = express.Router();

router.get('/kehadiran/:id',auth("Peserta","Kalab","Super Admin"), kehadiranController.getKehadiranByIdPeserta);

router.post('/kehadiran',auth("Kalab","Super Admin"), kehadiranController.createKehadiran);

router.patch('/kehadiran/:id',auth("Kalab","Super Admin"), kehadiranController.updateKehadiran);

router.delete('/kehadiran/:id',auth("Kalab","Super Admin"), kehadiranController.deleteKehadiran);

export default router;