import passport from "passport";
import { Strategy as GoogleStrategy } from "passport-google-oauth20";
import User from "../models/user-model.js";
import Batch from "../models/batch-model.js";
import Peserta from "../models/peserta-model.js";

passport.use(
  new GoogleStrategy(
    {
      clientID: process.env.GOOGLE_CLIENT_ID,
      clientSecret: process.env.GOOGLE_CLIENT_SECRET,
      callbackURL: `${process.env.SERVER_URL}/api/auth/google/callback`,
    },
    async (accessToken, refreshToken, profile, done) => {
      try {
        const email = profile.emails?.[0]?.value;
        if (!email) {
          return done(null, false, { message: "Email Google tidak tersedia" });
        }

        let user = await User.findOne({ where: { email } });

        if (user) {
          const newPhoto = profile.photos?.[0]?.value;
          if (newPhoto && user.foto !== newPhoto) {
            await user.update({ foto: newPhoto });
          }
          if (["Admin", "Kalab", "SA"].includes(user.role)) {
            return done(null, user);
          }

          const activeBatch = await Batch.findOne({ where: { status: true } });
          if (!activeBatch) {
            return done(null, false, {
              code: "NO_ACTIVE_BATCH",
              message: "Saat ini tidak ada batch aktif. Silakan coba lagi saat batch berikutnya dibuka.",
            });
          }

          const existingPeserta = await Peserta.findOne({
            where: { id_user: user.id_user, id_batch: activeBatch.id_batch },
          });

          if (!existingPeserta) {
            await Peserta.create({
              id_user: user.id_user,
              id_batch: activeBatch.id_batch,
              status: "Seleksi Berkas",
              tanggal_daftar: new Date(),
            });
          }

          return done(null, user);
        }

        const activeBatch = await Batch.findOne({ where: { status: true } });
        if (!activeBatch) {
          return done(null, false, {
            code: "NO_ACTIVE_BATCH",
            message: "Pendaftaran sedang ditutup. Saat ini tidak ada batch aktif.",
          });
        }

        const newUser = await User.create({
          email,
          nomor_identitas: email.substring(0, 10),
          nama: profile.displayName,
          foto: profile.photos?.[0]?.value,
          role: "Peserta",
          google_id: profile.id
        });

        await Peserta.create({
          id_user: newUser.id_user,
          id_batch: activeBatch.id_batch,
          status: "Seleksi Berkas",
          tanggal_daftar: new Date(),
        });

        return done(null, newUser);
      } catch (err) {
        console.error("ERROR DI PASSPORT CALLBACK:", err);
        return done(err, null);
      }
    }
  )
);

passport.serializeUser((user, done) => {
  done(null, user.id_user);
});

passport.deserializeUser(async (id, done) => {
  try {
    const user = await User.findByPk(id, {
      attributes: ["id_user", "email", "nama", "foto", "role", "nomor_identitas"],
    });
    if (!user) return done(null, null);

    const sessionUser = {
      id_user: user.id_user,
      email: user.email,
      nama: user.nama,
      foto: user.foto,
      role: user.role,
      nomor_identitas: user.nomor_identitas,
    };

    if (user.role === "Peserta") {
      const activeBatch = await Batch.findOne({ where: { status: true } });
      if (activeBatch) {
        const peserta = await Peserta.findOne({
          where: {
            id_user: user.id_user,
            id_batch: activeBatch.id_batch,
          },
          attributes: ["id_peserta", "id_batch", "status"],
        });

        if (peserta) {
          sessionUser.id_peserta = peserta.id_peserta;
          sessionUser.id_batch = peserta.id_batch;
          sessionUser.nama_batch = activeBatch.nama_batch;
          sessionUser.status = peserta.status;
        }
      }
    }

    done(null, sessionUser);
  } catch (error) {
    done(error, null);
  }
});

export default passport;