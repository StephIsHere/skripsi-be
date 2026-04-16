import Log from "../models/log-model.js";
import User from "../models/user-model.js";

class LogService {
  async getAllLog() {
    return await Log.findAll({      
      include: [
        {
          model: User,
          attributes: ["id_user", "nama"],
        },
      ],
      order: [["createdAt", "DESC"]],
    });
  }
}

export default new LogService();