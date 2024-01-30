// const express = require('express');
// const router = express.Router();
// const User = require("../model/user.model");
// const { parse } = require('dotenv');




// router.post("/", (req, res) => {
//     const mobileNo = req.body.mobileNo;

//     if (!mobileNo) { return res.status(400).json({ error: "Mobile number is required" }); }

//     User.findOne({ mobileNo: mobileNo }).exec().then((result) => {
//         if (result !== null) {
//             //MARK:- If user exists, perform login
//             sendToken(mobileNo, res, "Login Successful");
//             console.log("Login");
//         } else {
//             //MARK:- If user does not exist, perform registration
//             res.json({ msg: "Registration Successful" })
//         }
//     })
// });


// module.exports=router;


const express = require('express');
const router = express.Router();
const User = require("../model/user.model");
const jwt = require('jsonwebtoken');
const bodyParser = require('body-parser');

router.use(bodyParser.json());

//MARK:- Login
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
    }).catch((err) => {
        console.error("Error during findOne:", err);
        res.status(500).json({ error: "Internal Server Error" });
    });

});

//MARK:- Registration
router.post("/register", (req, res) => {
    const user = new User({
        mobileNo: req.body.mobileNo,
        password: req.body.password,
        fullName: req.body.fullName,
        gender: req.body.gender,
        alternateMobile: req.body.alternateMobile,
        hint: req.body.hint
    });

    user.save().then(()=>{sendToken(req.body.mobileNo, res, "Registration Successful"); }).catch((err) => {
        console.error("Error during user registration:", err);
        res.status(500).json({ error: "Error during user registration" });
    });
});

// Function to send JWT token as a response
const sendToken = (mobileNo, res, message) => {
    let token = jwt.sign({ mobileNo: mobileNo }, "Key");
    res.json({ token: token, msg: message }); 
}

module.exports = router;