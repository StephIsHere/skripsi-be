import express from 'express';
import penugasanController from '../controllers/penugasan-controller.js';

const router = express.Router();

router.get('/penugasan/batch/:id', penugasanController.getPenugasanByIdBatch);

router.get('/penugasan/:idBatch/:idPeserta', penugasanController.getPenugasanByIdBatchAndIdPeserta);

router.get('/penugasan/detail/:id', penugasanController.getPenugasanByIdPenugasan);

export default router;