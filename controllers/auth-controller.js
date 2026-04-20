import passport from "passport";
import { sanitizeUser } from "../services/auth-service.js";

export const googleLogin = passport.authenticate("google", {
  scope: ["profile", "email"],
});

export const googleCallback = passport.authenticate("google", {
  successRedirect: `${process.env.CLIENT_URL}/`,
  failureRedirect: `${process.env.CLIENT_URL}/login?error=auth_failed`,
});

export const me = (req, res) => {
  if (!req.isAuthenticated()) {
    return res.status(401).json({ message: "Belum login" });
  }
  res.json({ user: sanitizeUser(req.user) });
};

export const logout = (req, res, next) => {
  req.logout((err) => {
    if (err) return next(err);
    req.session.destroy((err) => {
      if (err) return next(err);
      res.clearCookie("SessionCookie");
      res.json({ message: "Logout berhasil" });
    });
  });
};