import express from 'express';
import penugasanController from '../controllers/penugasan-controller.js';

const router = express.Router();

router.get('/penugasan/:id', penugasanController.getBobot);

export default router;