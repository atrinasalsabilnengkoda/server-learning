const router = require("express").Router();
const { createUser, getUsers, getUserByUserId, updateUser, deleteUser, login } = require("./user.controller");
const { checkToken } = require("../../auth/token_validation");

router.post("/login", login);
router.post("/", checkToken, createUser);
router.get("/", checkToken, getUsers);
router.get("/:id", checkToken, getUserByUserId);
router.put("/", checkToken, updateUser);
router.delete("/", checkToken, deleteUser);

module.exports = router;