import express from "express";
import * as authController from "../controllers/auth-controller.js";
import auth from "../middleware/auth.js";

const router = express.Router();

router.get("/google", authController.googleLogin);
router.get("/google/callback", authController.googleCallback);

router.get("/me", authController.me);
router.post("/logout", authController.logout);

export default router;