import express from 'express';
import soalController from '../controllers/soal-controller.js';
import auth from '../middleware/auth.js';

const router = express.Router();

router.get('/soal',auth("Admin","Kalab","SA"), soalController.getSoal);

router.get('/soal/:id',auth("Admin","Kalab","SA"), soalController.getSoalById);

router.post('/soal/',auth("Admin","Kalab","SA"), soalController.createSoal);

router.patch('/soal/:id',auth("Admin","Kalab","SA"), soalController.updateSoal);

router.delete('/soal/:id',auth("Admin","Kalab","SA"), soalController.deleteSoal);

export default router;