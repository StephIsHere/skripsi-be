import express from 'express';
import penugasanController from '../controllers/penugasan-controller.js';
import { uploadPengumpulan } from "../config/multer.js";
import auth from '../middleware/auth.js';

const router = express.Router();

router.get('/penugasan/batch/:id',auth("Kalab","Super Admin"), penugasanController.getPenugasanByIdBatch);

router.get("/penugasan/kelompok/:id_kelompok",auth("Kalab","Super Admin"),penugasanController.getPenugasanByIdKelompok);

router.patch("/penugasan/:id_peserta/:id_penugasan/upload",auth("Kalab","Super Admin"),uploadPengumpulan,penugasanController.uploadFilePengumpulan);

router.get('/penugasan/:id',auth("Kalab","Super Admin"), penugasanController.getPenugasanByIdPenugasan);

router.get('/penugasan/:idBatch/:idPeserta',auth("Kalab","Super Admin"), penugasanController.getPenugasanByIdBatchAndIdPeserta);

router.post('/penugasan',auth("Kalab","Super Admin"), penugasanController.createPenugasan);

router.patch('/penugasan/:id',auth("Kalab","Super Admin"), penugasanController.updatePenugasan);

router.delete('/penugasan/:id',auth("Kalab","Super Admin"), penugasanController.deletePenugasan);


export default router;