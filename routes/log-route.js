import express from 'express';
import logController from '../controllers/log-controller.js';

const router = express.Router();

router.get("/log", logController.getAllLog);

export default router;