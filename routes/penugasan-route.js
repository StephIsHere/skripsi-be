import express from 'express';
import penugasanController from '../controllers/penugasan-controller.js';
import { uploadPengumpulan } from "../config/multer.js";
import auth from '../middleware/auth.js';

const router = express.Router();

// =====================
// GET
// =====================
router.get('/penugasan/batch/:idBatch', auth('Kalab', 'Super Admin'), penugasanController.getPenugasanByIdBatch);
router.get('/penugasan/kelompok/:idKelompok', auth('Kalab', 'Super Admin'), penugasanController.getPenugasanByIdKelompok);
router.get('/penugasan/batch/:idBatch/peserta/:idPeserta', auth('Peserta', 'Admin', 'Kalab', 'Super Admin'), penugasanController.getPenugasanByIdBatchAndIdPeserta);
router.get('/penugasan/:idPenugasan', auth('Peserta', 'Kalab', 'Super Admin'), penugasanController.getPenugasanByIdPenugasan);

// =====================
// UPLOAD
// =====================
router.patch('/penugasan/:idPenugasan/peserta/:idPeserta/upload', auth('Peserta', 'Kalab', 'Super Admin'), uploadPengumpulan, penugasanController.uploadFilePengumpulan);

// =====================
// CRUD
// =====================
router.post('/penugasan', auth('Kalab', 'Super Admin'), penugasanController.createPenugasan);
router.patch('/penugasan/:idPenugasan', auth('Kalab', 'Super Admin'), penugasanController.updatePenugasan);
router.delete('/penugasan/:idPenugasan', auth('Kalab', 'Super Admin'), penugasanController.deletePenugasan);


export default router;