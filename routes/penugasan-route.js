import express from 'express';
import penugasanController from '../controllers/penugasan-controller.js';

const router = express.Router();

router.get('/penugasan/:id', penugasanController.getRecaptPenugasan);

router.get('/penugasan/peserta/:id', penugasanController.getPenugasanByIdPeserta);

router.get('/penugasan/detail/:id', penugasanController.getPenugasanByIdPenugasan);

export default router;