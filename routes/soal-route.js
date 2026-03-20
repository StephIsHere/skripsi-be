import express from 'express';
import soalController from '../controllers/soal-controller.js';

const router = express.Router();

router.get('/soal', soalController.getSoal);

router.get('/soal/:id', soalController.getSoalById);

router.post('/soal/', soalController.createSoal);

router.patch('/soal/:id', soalController.updateSoal);

router.delete('/soal/:id', soalController.deleteSoal);

export default router;