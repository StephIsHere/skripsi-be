import express from 'express';
import pesertaController from '../controllers/peserta-controller.js';

const router = express.Router();

router.get('/peserta', pesertaController.getPeserta);

router.get('/peserta/:id', pesertaController.getPesertaById);

router.post('/peserta/', pesertaController.createPeserta);

router.patch('/peserta/:id', pesertaController.updatePeserta);

router.delete('/peserta/:id', pesertaController.deletePeserta);

router.get('/peserta/batch/:id', pesertaController.getPesertaByBatch);

router.get('/peserta/user/:id', pesertaController.getPesertaByIdUser);

export default router;