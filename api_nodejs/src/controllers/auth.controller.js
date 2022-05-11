const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken');
const sql = require('mssql');
const CustomError = require('../class/customError');
const logger = require('../utils/logger');
const query = require('../models/query');

const { signInSchema, signUpSchema } = require('../utils/validation');

// Cần thêm signIn cho admin
async function signIn(req, res, next) {
  const validate = signInSchema.validate(req.body);
  if (validate.error) {
    next(new CustomError(1, 400, 'Username, Password not valid'));
  } else {
    const { username, password } = req.body;
    const query = `SELECT * FROM [User] WHERE Username='${username}'`;
    try {
      const findUser = await sql.query(query);
      if (findUser.recordset.length == 0) {
        throw new CustomError(6, 400, 'Username is not exists');
      }
      const checkPass = bcrypt.compareSync(
        password,
        findUser.recordset[0].Password
      );
      if (!checkPass && password != findUser.recordset[0].Password)
        throw new CustomError(4, 400, 'Username or password wrong');
      else {
        const resItem = findUser.recordset[0];
        delete resItem['Password'];
        delete resItem['IsDelete'];
        const token = jwt.sign(
          {
            user: {
              id: resItem.Id,
              username: resItem.Username,
              email: resItem.Email,
              role: resItem.Role,
            },
          },
          process.env.PRIVATE_KEY,
          { expiresIn: '1h' }
        );
        res.json({
          success: true,
          message: 'SignIn successfull',
          data: { user: resItem, token: token },
        });
      }
    } catch (err) {
      next(err);
    }
  }
}
async function signUp(req, res, next) {
  const validate = signUpSchema.validate(req.body);
  if (validate.error) {
    next(new CustomError(1, 400, 'Username, Email or Password not valid'));
  } else {
    const { username, password, email } = req.body;
    try {
      const findUser = await sql.query(query.qFindUser(username, email));
      if (findUser.recordset.length > 0) {
        throw new CustomError(2, 400, 'User is exists');
      }
      const encryptPass = await bcrypt.hash(password, 10);
      // const addQuery = `INSERT INTO [User] (Username, Password, Email, [Role])
      // VALUES ('${username}', '${encryptPass}', '${email}', 1)`;
      const result = await sql.query(
        query.qSignIn(username, email, encryptPass)
      );
      res.json({ success: true, message: 'Signup successful' });
    } catch (err) {
      next(err);
    }
  }
}

module.exports = { signIn, signUp };