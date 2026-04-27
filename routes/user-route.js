import express from 'express';
import userController from '../controllers/user-controller.js';
import auth from '../middleware/auth.js';

const router = express.Router();

router.get('/users',auth("SA"), userController.getUsers);

router.get('/users/:id',auth("SA"), userController.getUserById);

router.post('/users/',auth("SA"), userController.createUser);

router.patch('/users/:id',auth("SA"), userController.updateUser);

router.delete('/users/:id',auth("SA"), userController.deleteUser);

export default router;