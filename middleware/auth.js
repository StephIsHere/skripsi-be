const auth = (...roles) => {
  return (req, res, next) => {
    if (!req.isAuthenticated || !req.isAuthenticated()) {
      return res.status(401).json({ message: 'Belum login' });
    }

    if (roles.length === 0) return next();

    if (!req.user?.role || !roles.includes(req.user.role)) {
      return res.status(403).json({ message: 'Akses ditolak' });
    }

    next();
  };
};

export default auth;