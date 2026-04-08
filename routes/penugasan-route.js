import express from 'express';
import penugasanController from '../controllers/penugasan-controller.js';

const router = express.Router();

router.get('/penugasan/batch/:id', penugasanController.getPenugasanByIdBatch);

router.get('/penugasan/:id', penugasanController.getPenugasanByIdPenugasan);

router.get('/penugasan/:idBatch/:idPeserta', penugasanController.getPenugasanByIdBatchAndIdPeserta);

router.post('/penugasan', penugasanController.createPenugasan);

router.patch('/penugasan/:id', penugasanController.updatePenugasan);

router.delete('/penugasan/:id', penugasanController.deletePenugasan);


export default router;