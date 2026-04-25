import multer from "multer";
import path from "path";
import fs from "fs";
import crypto from "crypto";

// ── Helper ──────────────────────────────────────────────────────────
const ensureDir = (dir) => fs.mkdirSync(dir, { recursive: true });

// Generate filename
const randomName = () => crypto.randomBytes(16).toString("hex");

// ── Allowed MIME Types ──────────────────────────────────────────────
const ALLOWED_IMAGE = ["image/jpeg", "image/png", "image/webp"];

const ALLOWED_DOKUMEN = {
  cv:               ["application/pdf", ...ALLOWED_IMAGE],
  foto:             ["application/pdf",...ALLOWED_IMAGE],
  ktm:              ["application/pdf", ...ALLOWED_IMAGE],
  transkrip:        ["application/pdf"],
  motivation_letter:["application/pdf"],
};

const ALLOWED_PENGUMPULAN = ["application/pdf"];

// ── Storage Configurations ──────────────────────────────────────────
const storageTinymce = multer.diskStorage({
  destination: (req, file, cb) => {
    const dir = "public/uploads/TinyMce";
    ensureDir(dir);
    cb(null, dir);
  },
  filename: (req, file, cb) => {
    const ext = path.extname(file.originalname);
    cb(null, `${randomName()}${ext}`); 
  },
});

const storageDokumen = multer.diskStorage({
  destination: (req, file, cb) => {
    const dir = `public/uploads/batch/${req.user.nama_batch}/peserta/${req.user.nama}/dokumen`;
    ensureDir(dir);
    cb(null, dir);
  },
  filename: (req, file, cb) => {
    const ext = path.extname(file.originalname);
    cb(null, `${randomName()}${ext}`); 
  },
});

const storagePengumpulan = multer.diskStorage({
  destination: (req, file, cb) => {
    const dir = `public/uploads/batch/${req.user.nama_batch}/peserta/${req.user.nama}/laporan`;
    ensureDir(dir);
    cb(null, dir);
  },
  filename: (req, file, cb) => {
    const ext = path.extname(file.originalname);
    cb(null, `${randomName()}${ext}`); 
  },
});

// ── File Filters ────────────────────────────────────────────────────
const filterTinymce = (req, file, cb) => {
  if (file.mimetype.startsWith("image/")) {
    cb(null, true);
  } else {
    cb(new Error("File harus gambar!"), false);
  }
};

const filterDokumen = (req, file, cb) => {
  const allowed = ALLOWED_DOKUMEN[file.fieldname];
  if (allowed && allowed.includes(file.mimetype)) {
    cb(null, true);
  } else {
    cb(new Error(`Tipe file tidak valid untuk field: ${file.fieldname}`), false);
  }
};

const filterPengumpulan = (req, file, cb) => {
  if (ALLOWED_PENGUMPULAN.includes(file.mimetype)) {
    cb(null, true);
  } else {
    cb(new Error("File harus berupa PDF atau Word document!"), false);
  }
};

// ── Multer Exports ──────────────────────────────────────────────────
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

export const uploadPengumpulan = multer({
  storage: storagePengumpulan,
  fileFilter: filterPengumpulan,
  limits: { fileSize: 5 * 1024 * 1024 },
}).single("file_pengumpulan");