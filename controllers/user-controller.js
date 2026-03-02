import userServices from "../services/user-services.js";

class UserController {

  async getUsers(req,res){
    try {
      const users = await userServices.getAllUsers();
      return res.json({
        success: true,
        data: users
      });
    } catch (error) {
      return res.status(500).json({
        success: false,
        message: error.message
      })
    }
  }

  async getUserById(req,res){
    try {
      const user = await userServices.getUserById(req.params.id);
      if(!user){
        return res.status(404).json({
          success: false,
          message: "User not found"
        });
      }

      return res.json({
        success: true,
        data: user
      })
    } catch (error) {
      return res.status(500).json({
        success: false,
        message: error.message
      })
    }
  }

  async createUser(req,res){
    try {
      const user = await userServices.createUser(req.body);
      return res.status(201).json({
        success: true,
        data: user
      });
    } catch (error) {
      return res.status(500).json({
        success: false,
        message: error.message
      })
    }
  }

  async updateUser(req,res){
    try {
      const user = await userServices.updateUser(req.params.id, req.body);
      if (!user) {
        return res.status(404).json({
          success: false,
          message: "User not found"
        });
      }

      return res.json({
        success: true,
        data: user
      });

    } catch (error) {
      return res.status(500).json({
        success: false,
        message: error.message
      });
    }
  }

  async deleteUser(req,res) {
    try {
      const user = await userServices.deleteUser(req.params.id);
      if(!user){
        return res.status(404).json({
          success: false,
          message: "User not found"
        });
      }

      return res.json({
        success: true,
        message: "User deleted successfully"
      });

    } catch (error) {
      return res.status(500).json({
        success: false,
        message: error.message
      });
    }
  }
}

export default new UserController();