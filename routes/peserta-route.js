import express from 'express';
import pesertaController from '../controllers/peserta-controller.js';
import auth from '../middleware/auth.js';

const router = express.Router();

router.get('/peserta',auth("Kalab","Super Admin"), pesertaController.getPeserta);

router.get('/peserta/:id',auth("Kalab","Super Admin"), pesertaController.getPesertaById);

router.post('/peserta/',auth("Kalab","Super Admin"), pesertaController.createPeserta);

router.patch('/peserta/:id',auth("Kalab","Super Admin"), pesertaController.updatePeserta);

router.delete('/peserta/:id',auth("Kalab","Super Admin"), pesertaController.deletePeserta);

router.get('/peserta/batch/:id',auth("Kalab","Super Admin"), pesertaController.getPesertaByBatch);

export default router;