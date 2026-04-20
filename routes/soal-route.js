import express from 'express';
import soalController from '../controllers/soal-controller.js';
import auth from '../middleware/auth.js';

const router = express.Router();

router.get('/soal',auth("Kalab","Super Admin"), soalController.getSoal);

router.get('/soal/:id',auth("Kalab","Super Admin"), soalController.getSoalById);

router.post('/soal/',auth("Kalab","Super Admin"), soalController.createSoal);

router.patch('/soal/:id',auth("Kalab","Super Admin"), soalController.updateSoal);

router.delete('/soal/:id',auth("Kalab","Super Admin"), soalController.deleteSoal);

export default router;