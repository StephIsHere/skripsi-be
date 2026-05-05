import express from 'express';
import pesertaController from '../controllers/peserta-controller.js';
import auth from '../middleware/auth.js';

const router = express.Router();

router.get('/peserta',auth("Kalab","SA"), pesertaController.getPeserta);

router.get('/peserta/:id',auth("Kalab","SA"), pesertaController.getPesertaById);

router.post('/peserta/',auth("Kalab","SA"), pesertaController.createPeserta);

router.patch('/peserta/:id',auth("Kalab","SA"), pesertaController.updatePeserta);

router.delete('/peserta/:id',auth("Kalab","SA"), pesertaController.deletePeserta);

router.get('/peserta/batch/:id',auth("Kalab","SA"), pesertaController.getPesertaByBatch);

export default router;