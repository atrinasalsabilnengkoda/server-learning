const pool = require("../../config/database");

module.exports = {
  create: (data, callBack) => {
    pool.query(
      `insert into answer(id_user, id_question, the_answer, grade) 
                values(?,?,?,?)`,
      [data.id_user, data.id_question, data.the_answer, data.grade],
      (error, results, fields) => {
        if (error) {
          callBack(error);
        }
        return callBack(null, results);
      }
    );
  },
  getAll: callBack => {
      pool.query(
          `SELECT * FROM answer`,
          [],
          (error, results, fields) => {
            if (error) {
              callBack(error);
            }
            return callBack(null, results);
          }
      );
  },
  getById: (data, callBack) => {
    pool.query(
        `SELECT * FROM answer WHERE id_user=? AND id_question=?`,
        [data.id_user, data.id_question],
        (error, results, fields) => {
          if (error) {
            callBack(error);
          }
          return callBack(null, results[0]);
        }
      );
  },
};
