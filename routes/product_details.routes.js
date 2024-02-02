const express = require('express');
const router = express.Router();

router.route("/uploadAll").post((req,res)=>{
    res.json("ok");
});

module.exports = router;