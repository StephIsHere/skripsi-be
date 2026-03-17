import User from "../models/user-model.js";

class UserService {
  async getAllUsers() {
    return await User.findAll();
  }

  async getUserById(id) {
    return await User.findOne({ where: { id_user: id } });
  }

  async createUser(data) {
    return await User.create(data);
  }

  async updateUser(id, data) {
    const user = await User.findOne({ where: { id_user: id } });

    if (!user) return null;

    await user.update(data);
    return user;
  }

  async deleteUser(id) {
    const user = await User.findOne({ where: { id_user: id } });

    if(!user) return null;

    await user.destroy();
    return user;
  }
}

export default new UserService();