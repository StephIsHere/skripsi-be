import express from "express";
import kelompokController from "../controllers/kelompok-controller.js";
import auth from "../middleware/auth.js";

const router = express.Router();

router.get("/kelompok/batch/:id_batch",auth("Peserta","Admin","Kalab","SA"), kelompokController.getKelompokByBatch);

router.get("/kelompok/:id",auth("Peserta","Admin","Kalab","SA"), kelompokController.getKelompokById);

router.post("/kelompok",auth("Peserta","Admin","Kalab","SA"), kelompokController.createKelompok);

router.patch("/kelompok/:id",auth("Peserta","Admin","Kalab","SA"), kelompokController.updateKelompok);

router.delete("/kelompok/:id",auth("Peserta","Admin","Kalab","SA"), kelompokController.deleteKelompok);

router.patch("/kelompok/:id/anggota/:id_peserta",auth("Peserta","Admin","Kalab","SA"), kelompokController.addAnggota);

router.delete("/kelompok/:id/anggota/:id_peserta",auth("Peserta","Admin","Kalab","SA"), kelompokController.removeAnggota);

export default router;