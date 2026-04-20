import express from 'express';
import logController from '../controllers/log-controller.js';
import auth from '../middleware/auth.js';

const router = express.Router();

router.get("/log",auth("Kalab","Super Admin"), logController.getAllLog);

export default router;