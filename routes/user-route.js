import express from 'express';
import userController from '../controllers/user-controller.js';
import auth from '../middleware/auth.js';

const router = express.Router();

router.get('/users',auth("Kalab","Super Admin"), userController.getUsers);

router.get('/users/:id',auth("Kalab","Super Admin"), userController.getUserById);

router.post('/users/',auth("Kalab","Super Admin"), userController.createUser);

router.patch('/users/:id',auth("Kalab","Super Admin"), userController.updateUser);

router.delete('/users/:id',auth("Kalab","Super Admin"), userController.deleteUser);

export default router;