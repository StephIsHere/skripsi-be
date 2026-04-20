export const sanitizeUser = (user) => {
  if (!user) return null;
  const obj = user.toJSON ? user.toJSON() : user;
  const { google_id, ...safe } = obj;
  return safe;
};