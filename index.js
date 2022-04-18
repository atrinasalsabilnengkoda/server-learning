require("dotenv").config();
const express = require("express");
const cors = require("cors");
const app = express();

const userRoute = require("./api/users/user.router");
const answerRoute = require("./api/answer/answer.router");

app.use(cors());
app.use(express.json());

app.use("/api/users", userRoute);
app.use("/api/answer", answerRoute);


const port = process.env.APP_PORT;
app.listen(port, () => {
    console.log(`running on port ${port}`);
})