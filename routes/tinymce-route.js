import express from "express";
import { uploadTinymce } from "../config/multer.js";
import auth from "../middleware/auth.js";

const router = express.Router();

router.post("/upload",auth("Peserta","Admin","Kalab","Super Admin"), uploadTinymce.single("file"), (req, res) => {
  try {
    const fileUrl = `http://localhost:3000/uploads/TinyMce/${req.file.filename}`;
    res.json({ location: fileUrl });
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
});

export default router;