import express from 'express';
import penugasanController from '../controllers/penugasan-controller.js';
import { uploadPengumpulan } from "../config/multer.js";
import auth from '../middleware/auth.js';

const router = express.Router();

router.get('/penugasan/batch/:idBatch', auth('Admin','Kalab', "SA"), penugasanController.getPenugasanByIdBatch);
router.get('/penugasan/kelompok/:idKelompok', auth('Admin','Kalab', "SA"), penugasanController.getPenugasanByIdKelompok);
router.get('/penugasan/peserta/:idPeserta', auth('Admin', 'Kalab', "SA"), penugasanController.getPenugasanByIdPeserta);
router.get('/penugasan/:idPenugasan', auth('Peserta', 'Admin','Kalab', "SA"), penugasanController.getPenugasanByIdPenugasan);
router.get('/penugasan/riwayat/:idPeserta', auth('Peserta', 'Admin','Kalab', "SA"), penugasanController.getPenugasanPeserta);

router.patch('/penugasan/:idPenugasan/peserta/:idPeserta/upload', auth('Peserta', 'Kalab', "SA"), uploadPengumpulan, penugasanController.uploadFilePengumpulan);

router.post('/penugasan', auth('Kalab', "SA"), penugasanController.createPenugasan);
router.patch('/penugasan/:idPenugasan', auth('Kalab', "SA"), penugasanController.updatePenugasan);
router.delete('/penugasan/:idPenugasan', auth('Kalab', "SA"), penugasanController.deletePenugasan);


export default router;