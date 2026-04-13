import express from "express";
import { uploadDokumen } from "../config/multer.js";
import Dokumen from "../models/dokumen-model.js";

const router = express.Router();

router.post("/laporan/:id_peserta", uploadDokumen, async (req, res) => {
  try {
    const { id_peserta } = req.params;

    const filePaths = {};
    for (const [field, fileArr] of Object.entries(req.files)) {
      filePaths[field] = `/uploads/${id_peserta}/${fileArr[0].filename}`;
    }

    await Dokumen.create({
      id_peserta,
      cv: filePaths.cv,
      foto: filePaths.foto,
      ktm: filePaths.ktm,
      transkrip: filePaths.transkrip,
      motivation_letter: filePaths.motivation_letter,
    });

    res.json({ message: "Upload berhasil", paths: filePaths });
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
});

router.get("/laporan/:id_peserta", async (req, res) => {
  try {
    const dokumen = await Dokumen.findOne({
      where: { id_peserta: req.params.id_peserta },
    });

    if (!dokumen) {
      return res.status(404).json({ message: "Dokumen tidak ditemukan" });
    }
    res.json(dokumen);
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
});


export default router;