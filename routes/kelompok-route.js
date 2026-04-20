import express from "express";
import kelompokController from "../controllers/kelompok-controller.js";
import auth from "../middleware/auth.js";

const router = express.Router();

router.get("/kelompok/batch/:id_batch",auth("Kalab","Super Admin"), kelompokController.getKelompokByBatch);

router.get("/kelompok/:id",auth("Kalab","Super Admin"), kelompokController.getKelompokById);

router.post("/kelompok",auth("Kalab","Super Admin"), kelompokController.createKelompok);

router.patch("/kelompok/:id",auth("Kalab","Super Admin"), kelompokController.updateKelompok);

router.delete("/kelompok/:id",auth("Kalab","Super Admin"), kelompokController.deleteKelompok);

router.patch("/kelompok/:id/anggota/:id_peserta",auth("Kalab","Super Admin"), kelompokController.addAnggota);

router.delete("/kelompok/:id/anggota/:id_peserta",auth("Kalab","Super Admin"), kelompokController.removeAnggota);

export default router;