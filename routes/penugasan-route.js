import express from 'express';
import penugasanController from '../controllers/penugasan-controller.js';
import { uploadPengumpulan } from "../config/multer.js";

const router = express.Router();

router.get('/penugasan/batch/:id', penugasanController.getPenugasanByIdBatch);

router.get("/penugasan/kelompok/:id_kelompok",penugasanController.getPenugasanByIdKelompok);

router.patch("/penugasan/:id_peserta/:id_penugasan/upload",uploadPengumpulan,penugasanController.uploadFilePengumpulan);

router.get('/penugasan/:id', penugasanController.getPenugasanByIdPenugasan);

router.get('/penugasan/:idBatch/:idPeserta', penugasanController.getPenugasanByIdBatchAndIdPeserta);

router.post('/penugasan', penugasanController.createPenugasan);

router.patch('/penugasan/:id', penugasanController.updatePenugasan);

router.delete('/penugasan/:id', penugasanController.deletePenugasan);


export default router;