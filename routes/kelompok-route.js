import express from "express";
import kelompokController from "../controllers/kelompok-controller.js";

const router = express.Router();

router.get("/kelompok/batch/:id_batch", kelompokController.getKelompokByBatch);

router.get("/kelompok/:id", kelompokController.getKelompokById);

router.post("/kelompok", kelompokController.createKelompok);

router.patch("/kelompok/:id", kelompokController.updateKelompok);

router.delete("/kelompok/:id", kelompokController.deleteKelompok);

router.patch("/kelompok/:id/anggota/:id_peserta", kelompokController.addAnggota);

router.delete("/kelompok/:id/anggota/:id_peserta", kelompokController.removeAnggota);

export default router;