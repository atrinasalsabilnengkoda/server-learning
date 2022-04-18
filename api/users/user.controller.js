const { genSaltSync, hashSync, compareSync } = require("bcrypt");
const { sign } = require("jsonwebtoken");
const {
  create,
  getAll,
  getById,
  updateUser,
  deleteUser,
  getUserbyusername,
} = require("./user.service");

module.exports = {
  createUser: (req, res) => {
    const body = req.body;
    const salt = genSaltSync(10);
    body.password = hashSync(body.password, salt);

    create(body, (err, results) => {
      if (err) {
        console.log(err);
        return res.status(500).json({
          success: 0,
          message: "Database connection error",
        });
      }

      return res.status(201).json({
        success: 1,
        data: results,
      });
    });
  },
  getUsers: (req, res) => {
    getAll((err, results) => {
      if (err) {
        console.log(err);
        return;
      }

      return res.status(200).json({
        success: 1,
        data: results,
      });
    });
  },
  getUserByUserId: (req, res) => {
    const id = req.params.id;
    getById(id, (err, results) => {
      if (err) {
        console.log(err);
        return;
      }
      if (!results) {
        return res.status(404).json({
          success: 0,
          message: "Record not Found",
        });
      }

      results.password = undefined;
      return res.status(200).json({
        success: 1,
        data: results,
      });
    });
  },
  updateUser: (req, res) => {
    const body = req.body;

    updateUser(body, (err, results) => {
      if (err) {
        console.log(err);
        return;
      }

      return res.status(201).json({
        success: 1,
        message: "update successfully",
      });
    });
  },
  deleteUser: (req, res) => {
    const data = req.body;
    deleteUser(data, (err, results) => {
      if (err) {
        console.log(err);
        return;
      }

      return res.status(200).json({
        success: 1,
        message: "user deleted successfully",
      });
    });
  },
  login: (req, res) => {
      const body = req.body
      getUserbyusername(body.username, (err, results) => {
          if (err) {
              console.log(err);
          }
          if (!results) {
              return res.status(401).json({
                  success: 0,
                  data: "Invalid username or password"
              });
          }

          const result = compareSync(body.password, results.password);
          if (result) {
              results.password = undefined;
              const jsontoken = sign({ result: results}, process.env.JWT_KEY, {
                expiresIn: "1d"
              });

              console.log(results);
              return res.status(200).json({
                  success: 1,
                  message: 'login successfully',
                  token: jsontoken,
                  role: results.role,
                  id_user: results.id_user
              });
          } else {
              return res.status(401).json({
                  success: 0,
                  data: "Invalid username or password"
              });
          }
      });
  }
};
