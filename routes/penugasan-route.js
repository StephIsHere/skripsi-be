import express from 'express';
import penugasanController from '../controllers/penugasan-controller.js';
import { uploadPengumpulan } from "../config/multer.js";
import auth from '../middleware/auth.js';

const router = express.Router();

// =====================
// GET
// =====================
router.get('/penugasan/batch/:idBatch', auth('Kalab', "SA"), penugasanController.getPenugasanByIdBatch);
router.get('/penugasan/kelompok/:idKelompok', auth('Kalab', "SA"), penugasanController.getPenugasanByIdKelompok);
router.get('/penugasan/batch/:idBatch/peserta/:idPeserta', auth('Peserta', 'Admin', 'Kalab', "SA"), penugasanController.getPenugasanByIdBatchAndIdPeserta);
router.get('/penugasan/:idPenugasan', auth('Peserta', 'Kalab', "SA"), penugasanController.getPenugasanByIdPenugasan);

// =====================
// UPLOAD
// =====================
router.patch('/penugasan/:idPenugasan/peserta/:idPeserta/upload', auth('Peserta', 'Kalab', "SA"), uploadPengumpulan, penugasanController.uploadFilePengumpulan);

// =====================
// CRUD
// =====================
router.post('/penugasan', auth('Kalab', "SA"), penugasanController.createPenugasan);
router.patch('/penugasan/:idPenugasan', auth('Kalab', "SA"), penugasanController.updatePenugasan);
router.delete('/penugasan/:idPenugasan', auth('Kalab', "SA"), penugasanController.deletePenugasan);


export default router;