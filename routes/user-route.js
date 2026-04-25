import express from 'express';
import userController from '../controllers/user-controller.js';
import auth from '../middleware/auth.js';

const router = express.Router();

router.get('/users',auth("Super Admin"), userController.getUsers);

router.get('/users/:id',auth("Super Admin"), userController.getUserById);

router.post('/users/',auth("Super Admin"), userController.createUser);

router.patch('/users/:id',auth("Super Admin"), userController.updateUser);

router.delete('/users/:id',auth("Super Admin"), userController.deleteUser);

export default router;