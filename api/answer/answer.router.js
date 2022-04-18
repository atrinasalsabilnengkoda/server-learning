const router = require("express").Router();
const { createAnswer, getAnswers, getAnswerById } = require("./answer.controller");
const { checkToken } = require("../../auth/token_validation");

router.post("/", checkToken, createAnswer);
router.get("/", checkToken, getAnswers);
router.get("/byid", checkToken, getAnswerById);

module.exports = router;