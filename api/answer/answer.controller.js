const {
  create,
  getAll,
  getById,
} = require("./answer.service");

module.exports = {
  createAnswer: (req, res) => {
    const body = req.body;

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
  getAnswers: (req, res) => {
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
  getAnswerById: (req, res) => {
    const query = req.query;
    console.log(query);

    getById(query, (err, results) => {
      if (err) {
        console.log(err);
        return;
      }
      if (!results) {
        return res.status(200).json({
          success: 0,
          message: "Record not Found",
        });
      }

      return res.status(200).json({
        success: 1,
        data: results,
      });
    });
  },
};
