import passport from "passport";

export const googleLogin = passport.authenticate("google", {
  scope: ["profile", "email"],
});

export const googleCallback = (req, res, next) => {
  passport.authenticate("google", (err, user, info) => {
    if (err) return next(err);

    if (!user) {
      const code = info?.code ?? "auth_failed";
      return res.redirect(`${process.env.CLIENT_URL}/login?error=${code}`);
    }

    req.logIn(user, (err) => {
      if (err) return next(err);
      if (user.role === "Peserta") {
        return res.redirect(`${process.env.CLIENT_URL}/peserta/pengumuman`);
      } else {
        return res.redirect(`${process.env.CLIENT_URL}/admin/pengumuman`);
      }
    });
  })(req, res, next);
};

export const me = (req, res) => {
  if (!req.user) {
    return res.status(401).json({ message: "Belum Login" });
  }
  return res.json({ user: req.user });
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