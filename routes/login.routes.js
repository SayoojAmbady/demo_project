const express = require('express');
const router = express.Router();
const User = require("../model/user.model");
const { parse } = require('dotenv');




router.post("/", (req, res) => {
    const mobileNo = req.body.mobileNo;

    if (!mobileNo) { return res.status(400).json({ error: "Mobile number is required" }); }

    User.findOne({ mobileNo: mobileNo }).exec().then((result) => {
        if (result !== null) {
            //MARK:- If user exists, perform login
            sendToken(mobileNo, res, "Login Successful");
            console.log("Login");
        } else {
            //MARK:- If user does not exist, perform registration
            res.json({ msg: "Registration Successful" })
        }
    })
});




module.exports=router;


