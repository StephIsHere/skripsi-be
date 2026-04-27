import express from "express";
import { uploadDokumen } from "../config/multer.js";
import Dokumen from "../models/dokumen-model.js";
import auth from "../middleware/auth.js";
import Peserta from "../models/peserta-model.js";
import User from "../models/user-model.js";

const router = express.Router();

router.post("/laporan/:id_peserta", auth("Peserta", "Admin", "Kalab", "Super Admin"), uploadDokumen, async (req, res) => {
  try {
    const { id_peserta } = req.user;

    const filePaths = {};
    for (const [field, fileArr] of Object.entries(req.files)) {
      filePaths[field] = `/uploads/batch/${req.user.nama_batch}/peserta/${req.user.nama}/dokumen/${fileArr[0].filename}`;
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

router.get("/laporan/:id_peserta", auth("Peserta", "Kalab", "Super Admin"), async (req, res) => {
  try {
    let id_peserta;

    if (req.user.role === "Peserta") {
      id_peserta = req.user.id_peserta; 
    } else {
      id_peserta = req.params.id_peserta;
    }

    const dokumen = await Dokumen.findOne({
      where: { id_peserta },
      include: [
        {
          model: Peserta,
          attributes: ["id_peserta"],
          include: [
            {
              model: User,
              attributes: ["id_user", "nama", "foto"],
            },
          ],
        },
      ],
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