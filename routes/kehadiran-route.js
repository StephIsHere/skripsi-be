import express from 'express';
import kehadiranController from '../controllers/kehadiran-controller.js';

const router = express.Router();

router.get('/kehadiran/:id', kehadiranController.getKehadiranByIdPeserta);

router.post('/kehadiran', kehadiranController.createKehadiran);

router.patch('/kehadiran/:id', kehadiranController.updateKehadiran);

router.delete('/kehadiran/:id', kehadiranController.deleteKehadiran);

export default router;