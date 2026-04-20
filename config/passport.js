import passport from "passport";
import { Strategy as GoogleStrategy } from "passport-google-oauth20";
import User from "../models/user-model.js";

passport.use(
  new GoogleStrategy(
    {
      clientID: process.env.GOOGLE_CLIENT_ID,
      clientSecret: process.env.GOOGLE_CLIENT_SECRET,
      callbackURL: `${process.env.SERVER_URL}/api/auth/google/callback`,
    },
    async (accessToken, refreshToken, profile, done) => {
      try {
        const foto = profile.photos?.[0]?.value;
        const email = profile.emails?.[0]?.value;
        if (!email) {
          return done(new Error("Email tidak tersedia dari Google"), null);
        }

        let user = await User.findOne({ where: { email } });

        if (!user) {
          user = await User.create({
            nama: profile.displayName,
            email,
            google_id: profile.id,
            foto,
            role: "Peserta",
          });
        }

        return done(null, user);
      } catch (error) {
        console.error("ERROR DI PASSPORT CALLBACK:", error);
        return done(error, null);
      }
    }
  )
);

passport.serializeUser((user, done) => {
  done(null, user.id_user);
});

passport.deserializeUser(async (id, done) => {
  try {
    const user = await User.findByPk(id);
    done(null, user);
  } catch (error) {
    done(error, null);
  }
});

export default passport;