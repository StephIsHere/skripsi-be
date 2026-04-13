import multer from "multer";
import path from "path";
import fs from "fs";

const ensureDir = (dir) => fs.mkdirSync(dir, { recursive: true });

const storageTinymce = multer.diskStorage({
  destination: (req, file, cb) => {
    const dir = "public/uploads";
    ensureDir(dir);
    cb(null, dir);
  },
  filename: (req, file, cb) => {
    const ext = path.extname(file.originalname);
    cb(null, Date.now() + ext);
  },
});

const storageDokumen = multer.diskStorage({
  destination: (req, file, cb) => {
    const dir = `public/uploads/${req.params.id_peserta}`;
    ensureDir(dir);
    cb(null, dir);
  },
  filename: (req, file, cb) => {
    const ext = path.extname(file.originalname);
    cb(null, `${file.fieldname}-${Date.now()}${ext}`);
  },
});

const filterTinymce = (req, file, cb) => {
  if (file.mimetype.startsWith("image/")) {
    cb(null, true);
  } else {
    cb(new Error("File harus gambar!"), false);
  }
};

const ALLOWED_DOKUMEN = {
  cv: ["application/pdf", "application/msword",
    "application/vnd.openxmlformats-officedocument.wordprocessingml.document"],
  foto: ["image/jpeg", "image/png", "image/webp"],
  ktm: ["application/pdf", "image/jpeg", "image/png"],
  transkrip: ["application/pdf"],
  motivation_letter: ["application/pdf", "application/msword",
    "application/vnd.openxmlformats-officedocument.wordprocessingml.document"],
};

const filterDokumen = (req, file, cb) => {
  const allowed = ALLOWED_DOKUMEN[file.fieldname];
  if (allowed && allowed.includes(file.mimetype)) {
    cb(null, true);
  } else {
    cb(new Error(`Tipe file tidak valid untuk field: ${file.fieldname}`), false);
  }
};

export const uploadTinymce = multer({
  storage: storageTinymce,
  fileFilter: filterTinymce,
});

export const uploadDokumen = multer({
  storage: storageDokumen,
  fileFilter: filterDokumen,
  limits: { fileSize: 5 * 1024 * 1024 },
}).fields([
  { name: "cv", maxCount: 1 },
  { name: "foto", maxCount: 1 },
  { name: "ktm", maxCount: 1 },
  { name: "transkrip", maxCount: 1 },
  { name: "motivation_letter", maxCount: 1 },
]);