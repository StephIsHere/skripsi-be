import express from "express";
import upload from "../config/multer.js";

const router = express.Router();

router.post("/upload", upload.single("file"), (req, res) => {
  try {
    const fileUrl = `http://localhost:3000/uploads/${req.file.filename}`;

    res.json({
      location: fileUrl,
    });
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
});

router.post("/upload/laporan", upload.single("file"), (req, res) => {
  try {
    const fileUrl = `http://localhost:3000/uploads/laporan/${req.file.filename}`;
    res.json({
      location: fileUrl,
    });
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
});

export default router;