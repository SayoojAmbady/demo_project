const express = require('express');
const middleware = require('../middleware');
const User = require('../model/user.model');
const router = express.Router();

router.route("/").get(middleware.checkToken, (req, res) => {
    console.log(req.decoded);
    User.findOne({ mobileNo: req.decoded.mobileNo })
        .then(result => {
            console.log(result);
            return res.json({msg:"Success",result: result});
        })
        .catch(err => {
            console.error(err);
            return res.status(500).send('Error on the server.');
        }); 
});

module.exports = router;