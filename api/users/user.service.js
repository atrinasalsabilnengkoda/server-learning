const pool = require("../../config/database");

module.exports = {
  create: (data, callBack) => {
    pool.query(
      `insert into users(username, password, name, attendees_no, class, role, image, poin) 
                values(?,?,?,?,?,?,?,?)`,
      [data.username, data.password, data.name, data.attendees_no, data.class, data.role, data.image, data.poin],
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
          `SELECT id_user,username,name,attendees_no,class,role,image,poin FROM users`,
          [],
          (error, results, fields) => {
            if (error) {
              callBack(error);
            }
            return callBack(null, results);
          }
      );
  },
  getById: (id, callBack) => {
    pool.query(
        `SELECT id_user,username,name,attendees_no,class,role,image,poin FROM users WHERE id_user = ?`,
        [id],
        (error, results, fields) => {
          if (error) {
            callBack(error);
          }
          return callBack(null, results[0]);
        }
      );
  },
  updateUser: (data, callBack) => {
      pool.query(
          `UPDATE users SET name=?, username=?, attendees_no=?, class=?, image=?, poin=? WHERE id_user=?`, 
      [
          data.name,
          data.username,
          data.attendees_no,
          data.class,
          data.image,
          data.poin,
          data.id_user
      ],
      (error, results, fields) => {
          if (error) {
              callBack(error);
          }
          return callBack(null, results[0]);
      }
    );  
  },
  deleteUser: (data, callBack) => {
      pool.query(
          `DELETE FROM users WHERE id_user=?`,
          [data.id_user],
          (error, results, fields) => {
              if (error) {
                callBack(error);
              }
              return callBack(null, results);
          }
      );
  },
  getUserbyusername: (username, callBack) => {
      pool.query(
          `SELECT * FROM users WHERE username=?`,
          [username],
          (error, results, fields) => {
              if (error) {
                  callBack(error);
              }
              return callBack(null, results[0]);
          }
      );
  }
};
