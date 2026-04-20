import express from "express";
import * as authController from "../controllers/auth-controller.js";
import auth from "../middleware/auth.js";

const router = express.Router();

router.get("/google", authController.googleLogin);
router.get("/google/callback", authController.googleCallback);

router.get("/me", authController.me);
router.post("/logout", authController.logout);

// contoh penggunaan
// router.get("/admin/dashboard", auth("admin"), (req, res) => {
//   res.json({ message: `Halo admin ${req.user.nama}` });
// });

export default router;